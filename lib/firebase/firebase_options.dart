import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyBbYqW4mmvOBONDmZLPJ7joYysnuB3Ujx4',
      appId: '1:868500568531:android:5d11e14fe6826132f85726',
      messagingSenderId: '868500568531',
      projectId: 'student-info-app-mao',
      storageBucket: 'student-info-app-mao.firebasestorage.app',
      databaseURL:
          'https://student-info-app-mao-default-rtdb.firebaseio.com');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyBbYqW4mmvOBONDmZLPJ7joYysnuB3Ujx4',
      appId: '1:868500568531:android:5d11e14fe6826132f85726',
      messagingSenderId: '868500568531',
      projectId: 'student-info-app-mao',
      storageBucket: 'student-info-app-mao.firebasestorage.app',
      iosBundleId: 'com.myapp.firebase_note_app_realtime_db',
      databaseURL:
          'https://student-info-app-mao-default-rtdb.firebaseio.com');
}