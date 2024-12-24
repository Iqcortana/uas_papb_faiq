import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class AuthServices {
  static firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  // Anonymous SignIn
  static Future<firebase_auth.User?> signInAnonymous() async {
    try {
      firebase_auth.UserCredential result = await _auth.signInAnonymously();
      firebase_auth.User? firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign Out
  static Future<void> signOut() async {
    await _auth.signOut();
  }

  // Login
  static Future<firebase_auth.User?> signInWithEmail(
      String email, String password) async {
    try {
      firebase_auth.UserCredential result =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      firebase_auth.User? firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register
  static Future<firebase_auth.User?> registerWithEmail(
      String email, String password) async {
    try {
      firebase_auth.UserCredential result =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      firebase_auth.User? firebaseUser = result.user;

      return firebaseUser;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
