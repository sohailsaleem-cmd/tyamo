import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String logo;
  final double fontSize;
  final double logosize;

  const AuthHeading(
      {required this.maintext,
      required this.subtext,
      required this.logo,
      required this.fontSize,
      required this.logosize});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Text(maintext,
                style: GoogleFonts.lora(
                  color: Colors.redAccent,
                  fontSize: 20,
                )),
            Image(
              image: AssetImage(logo),
              height: logosize,
              width: logosize,
            ),
          ],
        ),
        Text(
          subtext,
          // 'To Connect with \n your partner',
          style: TextStyle(
              fontSize: fontSize,
              color: Color(0xff000221),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
