import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentimentanalysis/firebase_options.dart';
import 'package:sentimentanalysis/models/model_auth.dart';
import 'package:sentimentanalysis/screens/screen_index.dart';
import 'package:sentimentanalysis/screens/screen_login.dart';
import 'package:sentimentanalysis/screens/screen_splash.dart';
import 'package:sentimentanalysis/screens/screen_register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirebaseAuthProvider()),
      ],
      child: MaterialApp(
        title: 'flutter test',
        routes: {
          '/index': (context) => IndexScreen(),
          '/login': (context) => LoginScreen(),
          '/splash': (context) => SplashScreen(),
          '/register': (context) => RegisterScreen(),
        },
        initialRoute: '/splash',
      ),
    );
  }
}
