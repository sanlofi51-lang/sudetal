import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sudan/generated/l10n.dart';

import 'package:sudan/widgets/Anccounemnts.dart';

import 'package:sudan/widgets/home.dart';
import 'package:hugeicons/hugeicons.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var checkvalue = true;
  String showButton = '';
  Widget currentScreen = Home();
  void changeScreen(bool value) {
    if (value) {
      currentScreen = Home();
      showButton = 'np';
    } else {
      currentScreen = AnnouncementsPage();
      showButton = 'show';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/images/background.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft,
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topLeft,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        const Color.fromARGB(157, 0, 0, 0),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Image.asset(
                    "assets/images/studal.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          currentScreen,
          if (showButton == 'show')
            Container(
              margin: EdgeInsets.only(top: 80, left: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 247, 247),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(192, 0, 0, 0),
                    blurRadius: 18,
                    spreadRadius: 3,
                  ),
                ],
              ),

              child: IconButton(
                icon: HugeIcon(
                  icon: HugeIcons.strokeRoundedArrowLeft02,
                  size: 24,
                  color: const Color.fromARGB(255, 13, 75, 126),
                ),
                onPressed: () {
                  setState(() {
                    checkvalue = true;
                    changeScreen(true);
                  });
                },
              ),
            ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(20),
        //alignment: Alignment.topLeft,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    checkvalue = true;
                    changeScreen(true);
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: checkvalue
                        ? Color.fromARGB(255, 3, 35, 212)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      HugeIcon(
                        size: 26,
                        icon: HugeIcons.strokeRoundedHome01,
                        strokeWidth: 2,
                        color: checkvalue ? Colors.white : Colors.grey,
                      ),
                      SizedBox(height: 4),
                      Text(
                        S.of(context).Home,
                        style: GoogleFonts.openSans(
                          color: checkvalue ? Colors.white : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    checkvalue = false;
                    changeScreen(false);
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: !checkvalue
                        ? Color.fromARGB(255, 3, 35, 212)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          HugeIcon(
                            size: 26,
                            icon: HugeIcons.strokeRoundedMegaphone02,
                            strokeWidth: 2,
                            color: !checkvalue ? Colors.white : Colors.grey,
                          ),
                          if (checkvalue)
                            Container(
                              padding: EdgeInsets.only(left: 15, bottom: 2),
                              child: Icon(
                                size: 11,
                                Icons.circle,
                                color: Colors.orange,
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 4),
                      Text(
                        S.of(context).announcemnts,
                        style: GoogleFonts.openSans(
                          color: !checkvalue ? Colors.white : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
