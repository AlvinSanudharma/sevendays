import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPricing extends StatefulWidget {
  @override
  _FirstPricingState createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;

  @override
  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/crown.png',
              width: 100,
            ),
          ),
          SizedBox(height: 48),
          Text(
            'Which one you wish\nto Upgrade?',
            style: GoogleFonts.poppins(
              color: Color(0xff191919),
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget option(int index, String imageUrl, String title, String description,
      String subDescription) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 315,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff6050E7)
                    : Color(0xffD9DEEA)),
            borderRadius: BorderRadius.circular(39)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 17, right: 30, bottom: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imageUrl),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          color: Color(0xff191919),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(description,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: Color(0xffA3A8B8))),
                        SizedBox(width: 6),
                        Text(subDescription,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff5343C2)))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 41, top: 10),
                child: selectedIndex == index
                    ? Image.asset(
                        'assets/purple-check.png',
                        width: 26,
                      )
                    : SizedBox(
                        width: 26,
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          header(),
          SizedBox(
            height: 50,
          ),
          option(0, 'assets/pig-icon.png', 'Money Security', 'support', '24/7'),
          SizedBox(height: 24),
          option(1, 'assets/paper-icon.png', 'Automation', 'we provide',
              'Invoice'),
          SizedBox(height: 24),
          option(2, 'assets/dollar-icon.png', 'Balance Report', 'can up to',
              '10 k'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff6050E7),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: Text(
                  'Upgrade Now',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15, left: 126),
                child: Image.asset('assets/right-arrow.png', width: 24),
              ),
              label: '')
        ],
      ),
    );
  }
}
