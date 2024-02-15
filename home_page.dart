import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/views/homepage/dash_board.dart';
import 'package:tyamo/views/widgets/Auth/homescreen/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // final tabs = [
  //   const Center(
  //     child: Text('home'),
  //   ),
  //   const Center(
  //     child: Text('search'),
  //   ),
  //   const Center(
  //     child: Text('camera'),
  //   ),
  //   const Center(
  //     child: Text('profile'),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer
      drawer: Drawer(
        child: Column(
          children: [
            //main text
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 25),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sohail saleem',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  fontSize: 17),
                            ),
                            Text(
                              'sohailsaleempk@gmail.com',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  letterSpacing: 0,
                                  fontSize: 10,
                                  color: Colors.purpleAccent),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //button
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Premium",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 0,
              child: Divider(),
            ),

            //listtile view

            const Column(
              children: [
                DrawrList(
                    iconName: FontAwesomeIcons.creditCard,
                    tileTitle: 'Subcription'),
                DrawrList(
                    iconName: FontAwesomeIcons.share, tileTitle: 'Tell others'),
                DrawrList(
                    iconName: FontAwesomeIcons.circleQuestion,
                    tileTitle: 'help'),
                DrawrList(iconName: Icons.settings, tileTitle: 'Settings'),
                DrawrList(
                    iconName: FontAwesomeIcons.starHalf,
                    tileTitle: 'Rate the App'),
              ],
            ),
            const Expanded(
              child: Divider(),
            ),
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DrawrList(
                    iconName: FontAwesomeIcons.rightFromBracket,
                    tileTitle: 'Sign out'),
              ],
            ))
          ],
        ),
      ),
      //app bar
      appBar: AppBar(
        toolbarHeight: 40,
        iconTheme: const IconThemeData(color: Colors.deepPurple),
        title: Text(
          'Tyamo',
          style: GoogleFonts.openSans(color: Colors.white54),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 229, 182, 93),
        actions: const [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.white54,
              child: Icon(
                Icons.mail_outline,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
      // body: tabs[_currentIndex],
        //main dash board
          body: const DashBoard(),
      

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.amber,
        // iconSize: 20,
        // selectedFontSize: 16,
        // unselectedFontSize: 11,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.orangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "camera",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
            backgroundColor: Colors.red,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
