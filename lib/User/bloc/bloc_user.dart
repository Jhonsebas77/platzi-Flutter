import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';

//? Aqui se consulta la fuente de datos (Repository) y es llamado por la UI

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  //? Flujo de datos - Stream
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase; // BlowMind

  ///? Casos de Uso
  ///? 1. SignIn a la aplicacion con Firebase
  Future<FirebaseUser> signIn() => authRepository.signInFirebase();

  ///? 2. Registrar usuario en la Base de Datos
  final cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) =>
      cloudFirestoreRepository.updateUserDataFirestore(user);

  ///? 3. SignIn a la aplicacion con Firebase
  signOut() {
    authRepository.signOut();
  }

  //? 4. Actualizar la data del lugar
  Future<void> updatePlaceData(Place place) =>
      cloudFirestoreRepository.updatePlaceData(place);

  @override
  void dispose() {}
}
