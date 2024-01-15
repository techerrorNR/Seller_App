import 'dart:io';

import 'package:flutter/material.dart';
import 'package:users_app/widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget
{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Image.asset('assets/images/icons/logout.png'),
            onPressed: ()=> exit(0),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors:
            [
              Colors.deepOrangeAccent,
              Colors.green,

            ],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp,
            )
          ),
        ),
        title: Text(
          "ItsBeReuse",
              style: TextStyle(
            fontSize: 30,
                fontWeight: FontWeight.bold,

        ),

        ),
    centerTitle: true,
      ),
    );
  }
}
