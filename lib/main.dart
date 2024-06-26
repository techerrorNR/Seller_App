import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/splashScreen/my_splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'global/global.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'itsBeReuse',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:MySplashScreen(),
    );
  }
}


