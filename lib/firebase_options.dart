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
    apiKey: 'AIzaSyBxXn_HIx8XtB5F1pD9_O2jLBIV3q_z0nE',
    appId: '1:679714043272:web:cac4f75fb67f670b83b63d',
    messagingSenderId: '679714043272',
    projectId: 'test-17cd5',
    authDomain: 'test-17cd5.firebaseapp.com',
    storageBucket: 'test-17cd5.appspot.com',
    measurementId: 'G-H5144MT44V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4hLzt2zANSsiEJQq6mpRaOS3MYOznz-E',
    appId: '1:679714043272:android:348dc5f15eb18ce683b63d',
    messagingSenderId: '679714043272',
    projectId: 'test-17cd5',
    storageBucket: 'test-17cd5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAgi2nl_83nRbOL-8mqyWCf-R9pqlv4sv0',
    appId: '1:679714043272:ios:73c6aba1da0393d683b63d',
    messagingSenderId: '679714043272',
    projectId: 'test-17cd5',
    storageBucket: 'test-17cd5.appspot.com',
    iosBundleId: 'com.example.firecrudWeb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAgi2nl_83nRbOL-8mqyWCf-R9pqlv4sv0',
    appId: '1:679714043272:ios:73c6aba1da0393d683b63d',
    messagingSenderId: '679714043272',
    projectId: 'test-17cd5',
    storageBucket: 'test-17cd5.appspot.com',
    iosBundleId: 'com.example.firecrudWeb',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBZYoKuesOGjmho9FedHlcx5bcY3W1KIbk',
    appId: '1:679714043272:web:0c66b3c499c18a9a83b63d',
    messagingSenderId: '679714043272',
    projectId: 'test-17cd5',
    authDomain: 'test-17cd5.firebaseapp.com',
    storageBucket: 'test-17cd5.appspot.com',
    measurementId: 'G-29KEWP1KPS',
  );

}