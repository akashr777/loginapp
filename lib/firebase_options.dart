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
    apiKey: 'AIzaSyD9l7eCir5mgx64u576AumBdtC6NmyZSCc',
    appId: '1:734561913648:web:42d62e39a16013681696f5',
    messagingSenderId: '734561913648',
    projectId: 'fir-d13eb',
    authDomain: 'fir-d13eb.firebaseapp.com',
    storageBucket: 'fir-d13eb.firebasestorage.app',
    measurementId: 'G-9F4LF6Q73B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBj9s8HEzCaLdQs2CcsM4RqktVhiTdBKkM',
    appId: '1:734561913648:android:e07337a054bb31c61696f5',
    messagingSenderId: '734561913648',
    projectId: 'fir-d13eb',
    storageBucket: 'fir-d13eb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDChp703-re9luh1G1dOKLhvd7Vyv_nqRA',
    appId: '1:734561913648:ios:197f4b1d9a5f944a1696f5',
    messagingSenderId: '734561913648',
    projectId: 'fir-d13eb',
    storageBucket: 'fir-d13eb.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDChp703-re9luh1G1dOKLhvd7Vyv_nqRA',
    appId: '1:734561913648:ios:197f4b1d9a5f944a1696f5',
    messagingSenderId: '734561913648',
    projectId: 'fir-d13eb',
    storageBucket: 'fir-d13eb.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD9l7eCir5mgx64u576AumBdtC6NmyZSCc',
    appId: '1:734561913648:web:1b18b5fd754cfdf01696f5',
    messagingSenderId: '734561913648',
    projectId: 'fir-d13eb',
    authDomain: 'fir-d13eb.firebaseapp.com',
    storageBucket: 'fir-d13eb.firebasestorage.app',
    measurementId: 'G-62BT8HPQR4',
  );
}
