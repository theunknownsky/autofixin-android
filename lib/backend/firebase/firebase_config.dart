import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAcq-2tB2iuWSYrAldw7Oil9w-vc7tRFwA",
            authDomain: "auto-fixin-yzifl6.firebaseapp.com",
            projectId: "auto-fixin-yzifl6",
            storageBucket: "auto-fixin-yzifl6.firebasestorage.app",
            messagingSenderId: "356212123258",
            appId: "1:356212123258:web:b9c2c44d825dbc73cd7dc3"));
  } else {
    await Firebase.initializeApp();
  }
}
