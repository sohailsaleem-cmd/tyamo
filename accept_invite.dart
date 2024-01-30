import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcceptInvitation extends StatelessWidget {
  const AcceptInvitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        
    
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 80,
            width: 80,
            // child: Image.asset(
            //   '../assets/images/fruits.png',
            //   filterQuality: FilterQuality.high,
            // ),
            child: Image.network(
              'https://png.pngtree.com/element_pic/00/16/07/06577d261edb9ec.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Colors.purpleAccent,
            child: Text(
              'See your friends invitation',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  letterSpacing: 1),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 200,
            width: 200,
            child: Image.asset('../assets/images/mail.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your invitation box is ,',
                style: GoogleFonts.poppins(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                'Empty',
                style: GoogleFonts.poppins(color: Colors.purple),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
