import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  AuthRepository(this._auth);
  final FirebaseAuth _auth;
  Stream<User?> authStateChanges() => _auth.authStateChanges();
  Future<UserCredential> signIn(String email, String password, {bool rememberMe = false}) async { final cred = await _auth.signInWithEmailAndPassword(email: email.trim(), password: password); final prefs = await SharedPreferences.getInstance(); await prefs.setBool('remember_me', rememberMe); return cred; }
  Future<void> resetPassword(String email) => _auth.sendPasswordResetEmail(email: email.trim());
  Future<void> signOut() => _auth.signOut();
}
