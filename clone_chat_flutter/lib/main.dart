import 'package:clone_chat_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:intro_slider/intro_slider.dart';

void main() => runApp(const MyApp());
 class MyApp extends StatelessWidget {
   const  MyApp({super.key});
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        // ignore: deprecated_member_use
        hintColor:   const Color(0xFFFEF9E8),
      ),
      home: const HomeScreen(),
         );
   }
 } 


