import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:med_pay/Features/Home/HomePage.dart';
import 'package:med_pay/Features/Transaction/TransactionView.dart';

class AuthProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User? _user;

  User? get user => _user;

  Future<void> signInWithEmailAndPassword(
      String email, String password, String? name, context) async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      await saveUserDataToFirestore();
      print("Successful");
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const TransactionView()));
      notifyListeners();
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> signInWithGoogle(context) async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        final UserCredential authResult =
            await _auth.signInWithCredential(credential);
        _user = authResult.user;

        // Save user data to Firestore
        await saveUserDataToFirestore();
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const HomePage()));
        notifyListeners();
      }
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> saveUserDataToFirestore() async {
    // Get user data
    String? userName = _user?.displayName;
    String? userEmail = _user?.email;

    // Save user data to Firestore
    // Replace 'users' with your Firestore collection name
    await FirebaseFirestore.instance.collection('users').doc(_user!.uid).set({
      'name': userName,
      'email': userEmail,
    });
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await _googleSignIn.signOut();
    _user = null;
    notifyListeners();
  }
}