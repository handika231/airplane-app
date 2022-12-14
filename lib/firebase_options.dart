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
    apiKey: 'AIzaSyCPNuaJ0FpjqsdBPomMOcfBgMrXZnJNXKI',
    appId: '1:524233486261:web:42df5ba759c42e159373fc',
    messagingSenderId: '524233486261',
    projectId: 'latihan-4ee2a',
    authDomain: 'latihan-4ee2a.firebaseapp.com',
    storageBucket: 'latihan-4ee2a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArftQf6N1g5sBcjW-NqhKxjnV_ijQFqB8',
    appId: '1:524233486261:android:36830a85bc2764d99373fc',
    messagingSenderId: '524233486261',
    projectId: 'latihan-4ee2a',
    storageBucket: 'latihan-4ee2a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEm6kR1eBXH2NJu07fRiWUbr8M6Ua-CCw',
    appId: '1:524233486261:ios:b130633fdd35b2889373fc',
    messagingSenderId: '524233486261',
    projectId: 'latihan-4ee2a',
    storageBucket: 'latihan-4ee2a.appspot.com',
    iosClientId: '524233486261-pf7dsi219ua2285ujsha74ntuo50evfc.apps.googleusercontent.com',
    iosBundleId: 'com.example.airplaneApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEm6kR1eBXH2NJu07fRiWUbr8M6Ua-CCw',
    appId: '1:524233486261:ios:ed40ac83bb34cfe49373fc',
    messagingSenderId: '524233486261',
    projectId: 'latihan-4ee2a',
    storageBucket: 'latihan-4ee2a.appspot.com',
    iosClientId: '524233486261-8ieglv0pfi7chm2pdsrskqi44n262m3i.apps.googleusercontent.com',
    iosBundleId: 'com.package.airplane',
  );
}
