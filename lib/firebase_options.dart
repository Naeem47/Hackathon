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
    apiKey: 'AIzaSyATzblXGXNnYemSa47H07x1wNWbt2YPwl4',
    appId: '1:42152401477:web:5a4cbaaed8b75cb600a12c',
    messagingSenderId: '42152401477',
    projectId: 'hackathon-83785',
    authDomain: 'hackathon-83785.firebaseapp.com',
    storageBucket: 'hackathon-83785.appspot.com',
    measurementId: 'G-XN5ZCS9R7K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLGJtWvWBv3Ql93Cu6DXyFsulBeRVfagk',
    appId: '1:42152401477:android:d02d7e5570cb598a00a12c',
    messagingSenderId: '42152401477',
    projectId: 'hackathon-83785',
    storageBucket: 'hackathon-83785.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfPSkerUFPQoSGFGeJ6PjcGXn6IEC0e8k',
    appId: '1:42152401477:ios:c4e9a9d1072920e900a12c',
    messagingSenderId: '42152401477',
    projectId: 'hackathon-83785',
    storageBucket: 'hackathon-83785.appspot.com',
    iosClientId: '42152401477-6b22rsdammg6drcmg9sgbsfv7b4kd3p4.apps.googleusercontent.com',
    iosBundleId: 'com.example.hackathon',
  );
}