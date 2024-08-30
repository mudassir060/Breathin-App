// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAVc_ZKRjwa3-x5l7b-zMFbn6_4YJhxPX8',
    appId: '1:387954875379:web:889e2cd941dc1b0fd65086',
    messagingSenderId: '387954875379',
    projectId: 'happy-birthday-f',
    authDomain: 'happy-birthday-f.firebaseapp.com',
    storageBucket: 'happy-birthday-f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD9YRBxJAeL4ZIdncL58ARLD5W5_GTFjto',
    appId: '1:387954875379:android:d5c6f3a1e9760508d65086',
    messagingSenderId: '387954875379',
    projectId: 'happy-birthday-f',
    storageBucket: 'happy-birthday-f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAr6lrL0dNIyhWHpYys5Hy9IwUsaqN8XgI',
    appId: '1:387954875379:ios:0e3a341678e6b455d65086',
    messagingSenderId: '387954875379',
    projectId: 'happy-birthday-f',
    storageBucket: 'happy-birthday-f.appspot.com',
    iosBundleId: 'com.example.breathinApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAr6lrL0dNIyhWHpYys5Hy9IwUsaqN8XgI',
    appId: '1:387954875379:ios:0e3a341678e6b455d65086',
    messagingSenderId: '387954875379',
    projectId: 'happy-birthday-f',
    storageBucket: 'happy-birthday-f.appspot.com',
    iosBundleId: 'com.example.breathinApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAVc_ZKRjwa3-x5l7b-zMFbn6_4YJhxPX8',
    appId: '1:387954875379:web:3bd7484aa5301661d65086',
    messagingSenderId: '387954875379',
    projectId: 'happy-birthday-f',
    authDomain: 'happy-birthday-f.firebaseapp.com',
    storageBucket: 'happy-birthday-f.appspot.com',
  );
}
