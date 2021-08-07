import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_disease_detector/screens/homepage.dart';
import 'package:plants_disease_detector/utils/getitems.dart';

void main() async {
  runApp(MyApp());
  await getItems();
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryIconTheme: IconThemeData(color: Colors.black)
      ),
      home: HomePage(),
    );
  }
}

