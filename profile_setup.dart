import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
// import 'package:tyamo/views/widgets/Auth/auth_heading.dart';
import 'package:tyamo/views/widgets/Auth/auth_text_field.dart';

// ignore: must_be_immutable
class ProfileSetup extends StatefulWidget {
  
  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profilebtnController =
      RoundedLoadingButtonController();

bool isMale=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset('../assets/images/school.png'),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/images/bg.png'),
          ),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.black12),
              child: Text(
                'Profile setup',
                style: GoogleFonts.lora(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 3),
              ),
            ),
            const SizedBox(height: 40),
            CircularProfileAvatar(
              '',
              backgroundColor: Colors.black,
              initialsText: Text(
                "+",
                style: GoogleFonts.lora(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                labelText: "Your Name",
                icon: Icons.face,
                Size: 15,
                obscureText: false,
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthTextField(
                labelText: "User Name",
                icon: Icons.alternate_email,
                Size: 15,
                obscureText: false,
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale=true;
                  });
                },
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration:  BoxDecoration(
                          color:isMale ? Colors.brown:Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 12),
                              blurRadius: 30,
                            )
                          ]),
                      child: const Icon(Icons.male)),
                ),
                GestureDetector(onTap: () {
                  setState(() {
                    isMale=false;
                  });
                },
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration:  BoxDecoration(
                          color: !isMale ? Colors.amberAccent:Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 12),
                              blurRadius: 30,
                            )
                          ]),
                      child: const Icon(Icons.female)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              width: 250,
              child: RoundedLoadingButton(
                color: Colors.redAccent,
                width: double.infinity,
                borderRadius: 30,
                controller: _profilebtnController,
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
            ),
          ],
        ),
      ),
    );
  }
}
