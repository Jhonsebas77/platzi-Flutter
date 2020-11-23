import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/repository/firebase_storage_repository.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image_with_flaBtn.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_place.dart';

//? Aqui se consulta la fuente de datos (Repository) y es llamado por la UI

class UserBloc implements Bloc {
  final authRepository = AuthRepository();
  final _firebaseStorageRepository = FirebaseStorageRepository();
  final _cloudFirestoreRepository = CloudFirestoreRepository();

  //? Flujo de datos - Stream
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase; // BlowMind
  Future<FirebaseUser> get currentUser => FirebaseAuth.instance.currentUser();

  //? Casos de Uso
  //? 1. SignIn a la aplicacion con Firebase
  Future<FirebaseUser> signIn() => authRepository.signInFirebase();

  //? 2. Registrar usuario en la Base de Datos
  final cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) =>
      cloudFirestoreRepository.updateUserDataFirestore(user);

  //? 3. SignIn a la aplicacion con Firebase
  signOut() {
    authRepository.signOut();
  }

  //? 4. Actualizar la data del lugar
  Future<void> updatePlaceData(Place place) =>
      cloudFirestoreRepository.updatePlaceData(place);

  //? 5. Subir la foto a Firebase Storage
  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStorageRepository.uploadFile(path, image);

  //? 6. Traer los lugares y guardarlos
  Stream<QuerySnapshot> placesListStream =
      Firestore.instance.collection(CloudFirestoreAPI().PLACES).snapshots();
  Stream<QuerySnapshot> get placesStream => placesListStream;
  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreRepository.buildMyPlaces(placesListSnapshot);
  List<CardImageWithFabIcon> buildPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  //? 7. Filtrar por usuario la data
  Stream<QuerySnapshot> myPlacesListStream(String uid) => Firestore.instance
      .collection(CloudFirestoreAPI().PLACES)
      .where('userOwner',
          isEqualTo:
              Firestore.instance.document('${CloudFirestoreAPI().USERS}/$uid'))
      .snapshots();
  @override
  void dispose() {}
}
