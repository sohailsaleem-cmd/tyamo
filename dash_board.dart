import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/views/widgets/Auth/homescreen/dash_btn.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          child: Text(
            'DASH BOARD',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: Colors.black,
                letterSpacing: 3),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Yours Friends',
            textAlign: TextAlign.left,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.purpleAccent,
                letterSpacing: 2),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          // color: Colors.black12,
          child: Card(
            // borderOnForeground: true,
            elevation: 15,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: CircularProfileAvatar(
                          "",
                          radius: 40,
                          backgroundColor: Colors.cyan,
                          borderWidth: 1,
                          borderColor: Colors.black,
                          elevation: 15,
                        ),
                      ),
                      Flexible(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.fiber_manual_record_rounded,
                                  color: Colors.grey,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'Jorden Bye',
                                  style: GoogleFonts.nunito(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'Newyork city',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text('Status'),
                              Text(
                                'Offline',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 2,
                        child: Container(color: Colors.blueGrey),
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text('User Status'),
                              Text(
                                'N/A',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 2,
                        child: Container(color: Colors.blueGrey),
                      ),
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text('Mood User'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const Row(
          children: [
            Flexible(
              child: DashBtn(
                icon: Icons.phone_android,
                maintext: 'Device info',
                clr: [Colors.green, Colors.white],
              ),
            ),
            Flexible(
              child: DashBtn(
                icon: Icons.message_rounded,
                maintext: 'Gallery',
                clr: [Colors.red, Colors.orangeAccent],
              ),
            ),
            Flexible(
              child: DashBtn(
                icon: Icons.mood_bad_outlined,
                maintext: 'Mood',
                clr: [Colors.purple, Colors.purpleAccent],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
            
              "Our Features",
              style: GoogleFonts.nunito(
                  color: Color.fromARGB(255, 72, 95, 223),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const Row(
          children: [
                Flexible(
              child: DashBtn(
                icon: Icons.play_arrow_rounded,
                maintext: 'Play list',
                clr: [Colors.white, Colors.white],
              ),
            ),
                Flexible(
              child: DashBtn(
                icon: Icons.location_on,
                maintext: 'Location',
                clr: [Colors.red, Colors.redAccent],
              ),
            ),
          ],
        ),
           const Row(
          children: [
                Flexible(
              child: DashBtn(
                icon: Icons.book_online_outlined,
                maintext: 'Dairy',
                clr: [Colors.greenAccent, Colors.greenAccent],
              ),
            ),
                Flexible(
              child: DashBtn(
                
                icon: Icons.list,
                maintext: 'Todo List',
                clr: [Colors.white, Colors.white],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
