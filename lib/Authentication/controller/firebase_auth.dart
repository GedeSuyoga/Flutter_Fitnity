import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      // Propagate the FirebaseAuthException
      throw e;
    } catch (e) {
      print("Some error occurred");
      throw FirebaseAuthException(
        message: "An unexpected error occurred",
        code: "unknown",
      );
    }
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      // Propagate the FirebaseAuthException
      throw e;
    } catch (e) {
      print("Some error occurred");
      throw FirebaseAuthException(
        message: "An unexpected error occurred",
        code: "unknown",
      );
    }
  }
}
