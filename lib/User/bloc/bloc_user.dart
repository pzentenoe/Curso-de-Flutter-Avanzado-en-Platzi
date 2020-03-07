import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/repository/firebase_storage_repository.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  //Flujo de datos Stream
  //Stream Firebase
  //Stream Controller
  Stream<FirebaseUser> _streamFirebase = FirebaseAuth.instance.onAuthStateChanged;

  Stream<FirebaseUser> get authStatus => _streamFirebase;

  Future<FirebaseUser> get currentUser => FirebaseAuth.instance.currentUser();

  //Casos de uso
  //1. SignIn

  Future<FirebaseUser> signIn() => _authRepository.signInFirebase();

  //2. Registrar usuario en BD
  final _cloudFirestoreRepository = CloudFirestoreRepository();

  void updateUserData(User user) => _cloudFirestoreRepository.updateUserData(user);

  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepository.updatePlaceData(place);

  signOut() => _authRepository.signOut();

  final _firebaseStorageRepository = FirebaseStorageRepository();

  Future<StorageUploadTask> uploadFile(String path, File image) => _firebaseStorageRepository.uploadFile(path, image);

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
