// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:getwidget/getwidget.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            height: 60,
            width: 80,
            child: Image.asset(
              '../assets/images/invitation.png',
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Icon(Icons.person_outline_outlined,
                  color: Colors.purpleAccent, size: 35),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50,
            color: Colors.tealAccent,
            child: Text(
              'find your freinds',
              style: GoogleFonts.poppins(
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  letterSpacing: 1),
            ),
          ),
          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 1),
                        ]),
                    child: const TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        hintText: "Hi,",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Nunito",
                        ),
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 1),
                    ],
                  ),
                  child: const Icon(Icons.search, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          // card:

          // Container(
            
          //   width: double.infinity,
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Card(
          //     elevation: 1,
          //     shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(
          //         Radius.circular(40),
          //       ),
          //     ),
          //     child: Container(
          //       height: 100,
          //       // width: 450,
          //       child: Column(
          //         children: [
          //           Row(
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.fromLTRB(15, 20, 5, 15),
          //                 child: SizedBox(
          //                   height: 60,
          //                   width: 60,
          //                   child: CircularProfileAvatar(
          //                     "",
          //                     backgroundColor: Colors.cyan,
          //                     radius: 35,
          //                   ),
          //                 ),
          //               ),
          //               Column(
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.only(top: 5, bottom: 5),
          //                     child: Text(
          //                       '@sohail74',
          //                       style: GoogleFonts.poppins(fontSize: 17),
          //                     ),
          //                   ),
          //                   Padding(
          //                     padding: const EdgeInsets.only(left: 0.0),
          //                     child: Text(
          //                       'sohail',
          //                       style: GoogleFonts.poppins(),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const Spacer(),
          //               // button accept and decline:
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Row(
          //                   children: [
          //                     GFButton(
          //                       child: Text('Accept'),
          //                       color: Colors.greenAccent,
          //                       onPressed: () {},
          //                       shape: GFButtonShape.pills,
          //                     ),
          //                     SizedBox(width: 10,),
          //                     GFButton(
                                
          //                       child: Text('Decline'),
          //                       color: Colors.redAccent,
          //                       onPressed: () {},
          //                       shape: GFButtonShape.pills,
          //                     ),

          //                   ],
          //                 ),
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset('../assets/images/mail.png'),
          ),
          const SizedBox(height: 20),
          Container(
            child: Text(
              "Search for your friends on tyamo \ninvite friends from tyamo ",
              style: GoogleFonts.nunito(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              "invite a friend",
              style: GoogleFonts.nunito(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
