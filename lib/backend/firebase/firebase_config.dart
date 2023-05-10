import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDa6qBtAHW-br5pwmclUofbH-VTXDLBsHg",
            authDomain: "agent360-io.firebaseapp.com",
            projectId: "agent360-io",
            storageBucket: "agent360-io.appspot.com",
            messagingSenderId: "935438850635",
            appId: "1:935438850635:web:a6148393a7f11c37c10bce"));
  } else {
    await Firebase.initializeApp();
  }
}
