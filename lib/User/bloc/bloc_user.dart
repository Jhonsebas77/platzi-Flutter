import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';

//? Aqui se consulta la fuente de datos (Repository) y es llamado por la UI

class UserBloc implements Bloc {
  final authRepository = AuthRepository();

  ///? Casos de Uso
  ///? 1. SignIn a la aplicacion con Firebase
  Future<FirebaseUser> signIn() {
    return authRepository.signInFirebase();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
