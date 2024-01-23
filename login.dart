import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/views/widgets/Auth/auth_heading.dart';
import 'package:tyamo/views/widgets/Auth/auth_text_field.dart';

class Login extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tyamo', style: GoogleFonts.lora(color: Colors.red)),
        centerTitle: true,
        backgroundColor: const Color(0xff000221),
      ),
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const AuthHeading(
              maintext: 'Sign in to Tyamo',
              subtext: 'To Connect with \n your partner',
              logo: "../assets/images/bear.png",
              fontSize: 16,
              logosize: 40,
            ),
            const SizedBox(
              height: 30,
            ),
            AuthTextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                labelText: 'Email',
                Size: 20,
                icon: Icons.alternate_email),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 20,
            ),
             AuthTextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                labelText: 'Password ',
                Size: 15,
                icon: Icons.password),
           
            const SizedBox(height: 30),
            RoundedLoadingButton(
              color: Colors.redAccent,
              width: double.infinity,
              borderRadius: 30,
              controller: _btnController,
              onPressed: () {
                print('pressed');
              },
              child: Text(
                'Login',
                style: GoogleFonts.lora(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.lora(
                    color: Colors.red,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have an account,  ',
                  style: GoogleFonts.lora(color: Colors.red, fontSize: 12),
                ),
                Text(
                  'Sign up',
                  style: GoogleFonts.lora(color: Colors.green, fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
