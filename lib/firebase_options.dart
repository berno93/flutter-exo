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
    apiKey: 'AIzaSyDjYyvDW1MCk0W-94AQHJMp-f0cdrLeOR0',
    appId: '1:925484312038:web:dfcac3cb8ba67c33afa227',
    messagingSenderId: '925484312038',
    projectId: 'ipssi2023-58525',
    authDomain: 'ipssi2023-58525.firebaseapp.com',
    storageBucket: 'ipssi2023-58525.appspot.com',
    measurementId: 'G-DG0K7F6FF4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrFhWhhlnlaX3sGhmAmpNHk_E_bGYd2_w',
    appId: '1:925484312038:android:6941192a606823e6afa227',
    messagingSenderId: '925484312038',
    projectId: 'ipssi2023-58525',
    storageBucket: 'ipssi2023-58525.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAre6VqcvtwM_cDzX_vXFNEkClPBanWng4',
    appId: '1:925484312038:ios:857a0aff76a7eb22afa227',
    messagingSenderId: '925484312038',
    projectId: 'ipssi2023-58525',
    storageBucket: 'ipssi2023-58525.appspot.com',
    iosClientId: '925484312038-vis1l87cuntaor7rfk8jaaigfpoaaffi.apps.googleusercontent.com',
    iosBundleId: 'com.example.firstbd233',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAre6VqcvtwM_cDzX_vXFNEkClPBanWng4',
    appId: '1:925484312038:ios:bd915e68fcc02528afa227',
    messagingSenderId: '925484312038',
    projectId: 'ipssi2023-58525',
    storageBucket: 'ipssi2023-58525.appspot.com',
    iosClientId: '925484312038-3eb9dmu5ie7dd32gpetvqbqoh3t0bq59.apps.googleusercontent.com',
    iosBundleId: 'com.example.firstbd233.RunnerTests',
  );
}
