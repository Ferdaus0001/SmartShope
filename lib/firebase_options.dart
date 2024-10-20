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
    apiKey: 'AIzaSyA6mcD2rzNvtkYZP0nRCISvIaGmg5wr3Cc',
    appId: '1:217208331336:web:677192be0c3c0f64594c7d',
    messagingSenderId: '217208331336',
    projectId: 'smart-shope-ecf73',
    authDomain: 'smart-shope-ecf73.firebaseapp.com',
    storageBucket: 'smart-shope-ecf73.appspot.com',
    measurementId: 'G-Z05WN4D7HH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF-nap8yEG7lFmSY3yyAlaTPOdrjcSqkY',
    appId: '1:217208331336:android:e8569e4a884b08f1594c7d',
    messagingSenderId: '217208331336',
    projectId: 'smart-shope-ecf73',
    storageBucket: 'smart-shope-ecf73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFmpUw7Q_imjPeC2QOH8sXnxiDOPLSTBs',
    appId: '1:217208331336:ios:e4fb24ecc506c1f1594c7d',
    messagingSenderId: '217208331336',
    projectId: 'smart-shope-ecf73',
    storageBucket: 'smart-shope-ecf73.appspot.com',
    iosBundleId: 'com.example.smartshopes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFmpUw7Q_imjPeC2QOH8sXnxiDOPLSTBs',
    appId: '1:217208331336:ios:e4fb24ecc506c1f1594c7d',
    messagingSenderId: '217208331336',
    projectId: 'smart-shope-ecf73',
    storageBucket: 'smart-shope-ecf73.appspot.com',
    iosBundleId: 'com.example.smartshopes',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA6mcD2rzNvtkYZP0nRCISvIaGmg5wr3Cc',
    appId: '1:217208331336:web:da15181a24bb8cf4594c7d',
    messagingSenderId: '217208331336',
    projectId: 'smart-shope-ecf73',
    authDomain: 'smart-shope-ecf73.firebaseapp.com',
    storageBucket: 'smart-shope-ecf73.appspot.com',
    measurementId: 'G-6H5PH2XCX1',
  );
}
