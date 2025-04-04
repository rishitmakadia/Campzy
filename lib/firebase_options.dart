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
    apiKey: 'AIzaSyCLYD31fNS4ytYv12g4Cj_RGrq3eqiCyfU',
    appId: '1:657081360781:web:your-web-app-id',
    messagingSenderId: '657081360781',
    projectId: 'sem-4-mad',
    authDomain: 'sem-4-mad.firebaseapp.com',
    storageBucket: 'sem-4-mad.firebasestorage.app',
    measurementId: 'your-measurement-id',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLYD31fNS4ytYv12g4Cj_RGrq3eqiCyfU',
    appId: '1:657081360781:android:d0cef7a2bfc0caee2d1dc4',
    messagingSenderId: '657081360781',
    projectId: 'sem-4-mad',
    storageBucket: 'sem-4-mad.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLYD31fNS4ytYv12g4Cj_RGrq3eqiCyfU',
    appId: '1:657081360781:ios:your-ios-app-id',
    messagingSenderId: '657081360781',
    projectId: 'sem-4-mad',
    storageBucket: 'sem-4-mad.firebasestorage.app',
    iosClientId: 'your-ios-client-id.apps.googleusercontent.com',
    iosBundleId: 'com.example.mad',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLYD31fNS4ytYv12g4Cj_RGrq3eqiCyfU',
    appId: '1:657081360781:ios:your-ios-app-id',
    messagingSenderId: '657081360781',
    projectId: 'sem-4-mad',
    storageBucket: 'sem-4-mad.firebasestorage.app',
    iosClientId: 'your-ios-client-id.apps.googleusercontent.com',
    iosBundleId: 'com.example.mad',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCLYD31fNS4ytYv12g4Cj_RGrq3eqiCyfU',
    appId: '1:657081360781:web:your-web-app-id',
    messagingSenderId: '657081360781',
    projectId: 'sem-4-mad',
    authDomain: 'sem-4-mad.firebaseapp.com',
    storageBucket: 'sem-4-mad.firebasestorage.app',
    measurementId: 'your-measurement-id',
  );
}
