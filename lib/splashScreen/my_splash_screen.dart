import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:users_app/authScreens/auth_screen.dart';
import 'package:users_app/mainScreen/home_screen.dart';


class MySplashScreen extends StatefulWidget
{
  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{
  splashScreenTimer()
  {
    Timer(const Duration(seconds: 4), () async
    {
      //user is already logged-in
      if(FirebaseAuth.instance.currentUser != null)
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> HomeScreen()));
      }
      else //user is NOT already logged-in
          {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> AuthScreen()));
      }
    });
  }
  @override
void initState() {
    // TODO: implement initState
    // Called Automatically
    // this is for splashScreen
    super.initState();

    splashScreenTimer();
  }

  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors:
            [
              Colors.white,
              Colors.white54,

            ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp,
            )
        ),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),

                child: Image.asset("images/itbreuse_1.png"
                ),
              ),
              const Text(
                  "Don't Waste Just Reuse ",
              style:TextStyle (
                fontSize: 30,
                letterSpacing: 3,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
              )
            ],
          ),
        ),
      ) ,

    );
  }
}
