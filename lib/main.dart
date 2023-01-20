import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firestoreApi.dart';
import 'campusMapVisualization.dart';
import 'diningHallButtons.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DbtoDart()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //app bar design
          backgroundColor: const Color.fromRGBO(200, 16, 46, 1),
          title: Text(
            'Denison University',
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Lora",
            ),
          ),
        ),
        body: Column(
          children: [
            CampusMapVisual(), //show campus map

            Container(
              margin: EdgeInsets.only(
                  left: 20, top: 20, bottom: 20), // locating text
              width: double.infinity,
              child: Text(
                "Today's",
                style: TextStyle(fontSize: 20, fontFamily: "Lora"),
                textAlign: TextAlign.left,
              ),
            ),

            DiningHallButtons() //dining hall buttons
          ],
        ),
      ),
    );
  }
}
