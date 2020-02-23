import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/model/user.dart';

class CloudFirestoreApi {
  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);

    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now(),
    }, merge: true);
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference _refPlaces = _db.collection(PLACES);
    FirebaseUser user = await _auth.currentUser();
    DocumentReference _userRef = _db.collection(this.USERS).document(user.uid);

    return _refPlaces.add({
      'name': place.name,
      'description': place.description,
      'likes': place.likes,
      'userOwner': _userRef //reference
    });

/*   await _auth.currentUser().then((FirebaseUser user){
      _refPlaces.add({
       'name': place.name,
       'description': place.description,
       'urlImage': place.urlImage,
       'likes': place.likes,
       'userOwner': "${USERS}/${user.uid}",

     });
    });*/
  }
}
