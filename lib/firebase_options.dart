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
    apiKey: 'AIzaSyA2PnksKRCUwgFGLehB6qfdl2gw8nkBphU',
    appId: '1:994523863925:web:5fd947eaf3fc9bbe5ed13c',
    messagingSenderId: '994523863925',
    projectId: 'iot-dashboard-v1',
    authDomain: 'iot-dashboard-v1.firebaseapp.com',
    storageBucket: 'iot-dashboard-v1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbKxZ9EOTPNH11ZEk0dI5YMCBJs3lRNr8',
    appId: '1:994523863925:android:07f9fdbb9d3e84875ed13c',
    messagingSenderId: '994523863925',
    projectId: 'iot-dashboard-v1',
    storageBucket: 'iot-dashboard-v1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcDQAUmKEqlH36K3Pu0ez_z5tll0VNKIE',
    appId: '1:994523863925:ios:d18c1f8c9387a0c35ed13c',
    messagingSenderId: '994523863925',
    projectId: 'iot-dashboard-v1',
    storageBucket: 'iot-dashboard-v1.appspot.com',
    iosClientId: '994523863925-7tnm50u9qkqd2404cpu9659fdshg636s.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcDQAUmKEqlH36K3Pu0ez_z5tll0VNKIE',
    appId: '1:994523863925:ios:d18c1f8c9387a0c35ed13c',
    messagingSenderId: '994523863925',
    projectId: 'iot-dashboard-v1',
    storageBucket: 'iot-dashboard-v1.appspot.com',
    iosClientId: '994523863925-7tnm50u9qkqd2404cpu9659fdshg636s.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectTest',
  );
}
