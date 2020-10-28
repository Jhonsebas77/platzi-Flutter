import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//? Logica de negocio de la conexion con Firebase

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<FirebaseUser> signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth =
        await googleSignInAccount.authentication;
    AuthResult authResult = await _auth.signInWithCredential(
        GoogleAuthProvider.getCredential(
            idToken: googleAuth.idToken, accessToken: googleAuth.accessToken));
    FirebaseUser user = authResult.user;
    return user;
  }
}

class EmailAndPasswordAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<FirebaseUser> emailAndPasswordSignIn(
      String email, String password) async {
    AuthResult authResult = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    FirebaseUser user = authResult.user;

    return user;
  }
}
