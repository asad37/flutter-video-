// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCNpq6fsiBihwCJ6S6eaeBQMgz2wWNJ1TI',
    appId: '1:840521403888:web:51ed7e12e8f40b602ea135',
    messagingSenderId: '840521403888',
    projectId: 'waqas-123456',
    authDomain: 'waqas-123456.firebaseapp.com',
    storageBucket: 'waqas-123456.appspot.com',
    measurementId: 'G-ZMTPT8GDTB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQXboZYc2bj2BGY9ECH-1haR3aW42roa8',
    appId: '1:840521403888:android:4f768c52682749752ea135',
    messagingSenderId: '840521403888',
    projectId: 'waqas-123456',
    storageBucket: 'waqas-123456.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeDA0I8-VEQ506nsPYRjN3Bb4vhB7lD38',
    appId: '1:840521403888:ios:a5f4c1831ee338002ea135',
    messagingSenderId: '840521403888',
    projectId: 'waqas-123456',
    storageBucket: 'waqas-123456.appspot.com',
    iosClientId: '840521403888-dd5711g5j0mhhpgjkcb8c3vqa95k7q1s.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizApp',
  );
}
