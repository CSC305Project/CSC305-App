import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyABFCNu8B5yUvetLL9bA886DB2WnjuSoCs",
            authDomain: "csc305-app.firebaseapp.com",
            projectId: "csc305-app",
            storageBucket: "csc305-app.firebasestorage.app",
            messagingSenderId: "155357037514",
            appId: "1:155357037514:web:06ef97d537b304cd7b4533",
            measurementId: "G-REP7G92YGY"));
  } else {
    await Firebase.initializeApp();
  }
}
