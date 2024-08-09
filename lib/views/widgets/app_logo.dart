import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngoprek_code_blog/constants.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '</> Ngoprek',
        style: GoogleFonts.poppinsTextTheme().displayLarge,
        children: <TextSpan>[
          TextSpan(
            text: 'Code.',
            style: GoogleFonts.poppinsTextTheme().displayLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
