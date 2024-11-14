import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDSDyw3aLVYL6T69uCGlaxFTwAgP0RJDk4",
            authDomain: "livetestv3.firebaseapp.com",
            projectId: "livetestv3",
            storageBucket: "livetestv3.firebasestorage.app",
            messagingSenderId: "1080432734722",
            appId: "1:1080432734722:web:79d9ed2c9b69c2db54ed1b",
            measurementId: "G-WK2GL0YP9T"));
  } else {
    await Firebase.initializeApp();
  }
}
