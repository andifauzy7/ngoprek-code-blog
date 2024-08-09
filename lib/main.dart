import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NgoprekCode - Blog',
      theme: ThemeData(
        canvasColor: Colors.white,
        textTheme: GoogleFonts.workSansTextTheme(),
        chipTheme: const ChipThemeData(
          backgroundColor: kPrimaryColor,
          side: BorderSide(color: kPrimaryColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
      home: const MainPage(),
    );
  }
}
