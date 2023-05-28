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
        return macos;
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
    apiKey: 'AIzaSyD8aETX3VkLyyyZG3qKFKJqzo6wbIDfRfY',
    appId: '1:456109044068:web:f9ae9f5421d962792b4a71',
    messagingSenderId: '456109044068',
    projectId: 'memoapp-a8fce',
    authDomain: 'memoapp-a8fce.firebaseapp.com',
    storageBucket: 'memoapp-a8fce.appspot.com',
    measurementId: 'G-7P4N1BVNWR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8jjkgQoj6YpsmxIGbW4mSfjQ4r-ocyYE',
    appId: '1:456109044068:android:a1f73e2a814a3c732b4a71',
    messagingSenderId: '456109044068',
    projectId: 'memoapp-a8fce',
    storageBucket: 'memoapp-a8fce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1EnnjPQf2HEVG0UTKeK1l-YljbM_8_EM',
    appId: '1:456109044068:ios:93a0db9f8c9fa5172b4a71',
    messagingSenderId: '456109044068',
    projectId: 'memoapp-a8fce',
    storageBucket: 'memoapp-a8fce.appspot.com',
    iosClientId: '456109044068-4fv3h9ehlo9j9qdtu2dq18cmbnoe2gp3.apps.googleusercontent.com',
    iosBundleId: 'com.example.memoApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1EnnjPQf2HEVG0UTKeK1l-YljbM_8_EM',
    appId: '1:456109044068:ios:93a0db9f8c9fa5172b4a71',
    messagingSenderId: '456109044068',
    projectId: 'memoapp-a8fce',
    storageBucket: 'memoapp-a8fce.appspot.com',
    iosClientId: '456109044068-4fv3h9ehlo9j9qdtu2dq18cmbnoe2gp3.apps.googleusercontent.com',
    iosBundleId: 'com.example.memoApplication',
  );
}