import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/02.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 30,
                shadowColor: Colors.black,
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.dancingScript(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
