import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCamx57XDcKIzSi4iImnRW1K_AeLJlR6Tk",
            authDomain: "krishi-bandhu-bbee2.firebaseapp.com",
            projectId: "krishi-bandhu-bbee2",
            storageBucket: "krishi-bandhu-bbee2.appspot.com",
            messagingSenderId: "632209478887",
            appId: "1:632209478887:web:a0a0a174330f8216913e42",
            measurementId: "G-Y66P5PKVY5"));
  } else {
    await Firebase.initializeApp();
  }
}
