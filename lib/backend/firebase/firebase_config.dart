import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC4SCHK5ABnblK0qHDNU8JizDCs47Q57mk",
            authDomain: "learning-od677g.firebaseapp.com",
            projectId: "learning-od677g",
            storageBucket: "learning-od677g.appspot.com",
            messagingSenderId: "823754848308",
            appId: "1:823754848308:web:78f30f9a87eee5fed8f261"));
  } else {
    await Firebase.initializeApp();
  }
}
