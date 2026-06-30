import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  AuthRepository._();

  static final FirebaseAuth _auth = FirebaseAuth.instance;

  // Current User
  static User? get currentUser => _auth.currentUser;

  // Auth State
  static Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Register
  static Future<UserCredential> register({
    required String email,
    required String password,
  }) async {
    return await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }

  // Login
  static Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }

  // Logout
  static Future<void> logout() async {
    await _auth.signOut();
  }

  // Forgot Password
  static Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email.trim());
  }
}
