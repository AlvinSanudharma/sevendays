import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/get-started-background.png',
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 527, left: 90, right: 90),
            child: Text(
              'Maximize Revenue',
              style: GoogleFonts.poppins(
                  color: Color(0xffFFFFFF),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580, left: 40, right: 40),
            child: Text(
              'Gain more profit from cryptocurrency \n without any risk involved',
              style: GoogleFonts.poppins(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 677, left: 148, right: 148),
            child: Image.asset(
              'assets/purple-btn.png',
              width: 80,
            ),
          )
        ],
      ),
    );
  }
}
