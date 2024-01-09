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
          'DefaultFirebaseOptions have not been configured for macOS - '
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
    apiKey: 'AIzaSyAcqtFIqlfRk6ZwbyIPPU8k-A6j8KQGiFA',
    appId: '1:699779196594:web:06e1582edbb6e2134a8bab',
    messagingSenderId: '699779196594',
    projectId: 'conejoz-0000',
    authDomain: 'conejoz-0000.firebaseapp.com',
    databaseURL: 'https://conejoz-0000-default-rtdb.firebaseio.com',
    storageBucket: 'conejoz-0000.appspot.com',
    measurementId: 'G-1QDG16XT90',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9CGa2Rmci8yQhu8jyU402eG11COKHnec',
    appId: '1:699779196594:android:a5ff397c3ecbc8074a8bab',
    messagingSenderId: '699779196594',
    projectId: 'conejoz-0000',
    databaseURL: 'https://conejoz-0000-default-rtdb.firebaseio.com',
    storageBucket: 'conejoz-0000.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDfH4GXBwxjIapXi_AU0ouU5j8JqRaETTc',
    appId: '1:699779196594:ios:19667741f6e967e54a8bab',
    messagingSenderId: '699779196594',
    projectId: 'conejoz-0000',
    databaseURL: 'https://conejoz-0000-default-rtdb.firebaseio.com',
    storageBucket: 'conejoz-0000.appspot.com',
    iosClientId:
        '699779196594-0bsdllsbgf6gc6nuc6lpprulphmu1j87.apps.googleusercontent.com',
    iosBundleId: 'com.example.conejoz',
  );
}