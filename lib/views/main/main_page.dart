import 'package:flutter/material.dart';
import 'package:ngoprek_code_blog/constants.dart';
import 'package:ngoprek_code_blog/views/header/header.dart';
import 'package:ngoprek_code_blog/views/home/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding),
            Header(),
            SizedBox(height: kDefaultPadding),
            HomePage(),
            SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
