import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<void> signUp(String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided.');
      } else {
        throw Exception(e.message ?? 'Authentication error');
      }
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }

  Future<void> signIn(String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('The password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('Email already in use.');
      } else {
        throw Exception(e.message ?? 'Signup error');
      }
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }
}
