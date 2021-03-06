import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreApi = CloudFirestoreApi();

  void updateUserData(User user) => _cloudFirestoreApi.updateUserData(user);

  Future<void> updatePlaceData(Place place) => _cloudFirestoreApi.updatePlaceData(place);
}
