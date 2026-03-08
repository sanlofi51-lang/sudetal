import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sudan/widgets/announcements_page_stander.dart';
import 'package:sudan/widgets/homestander.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sudan/generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isArabic() {
    return Intl.getCurrentLocale() == "en";
  }

  var checkvalue = true;
  String showButton = '';
  Widget currentScreen = Homestander();

  void changeScreen(bool value) {
    if (value) {
      currentScreen = Homestander();
      showButton = 'np';
    } else {
      currentScreen = AnnouncementsPageStander();
      showButton = 'show';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,

            child: Stack(
              alignment: AlignmentGeometry.topCenter,
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/images/background.jpg",
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft,
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
                        Colors.black.withValues(alpha: 0.1),
                        const Color.fromARGB(157, 0, 0, 0),
                      ],
                    ),
                  ),
                ),

                Image.asset(
                  alignment: AlignmentGeometry.topCenter,
                  height: MediaQuery.sizeOf(context).height / 1,
                  width: MediaQuery.sizeOf(context).width / 1,
                  "assets/images/studal.png",
                ),
              ],
            ),
          ),
          currentScreen,
          if (showButton == 'show')
            Container(
              margin: EdgeInsets.only(top: 80, left: 20, right: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 247, 247),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),

              child: IconButton(
                icon: HugeIcon(
                  icon: isArabic()
                      ? HugeIcons.strokeRoundedArrowLeft02
                      : HugeIcons.strokeRoundedArrowRight02,
                  size: 24.sp,
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
        height: 105.h,

        margin: EdgeInsets.all(10),
        //alignment: Alignment.topLeft,
        padding: EdgeInsets.only(bottom: 1, left: 6, top: 1, right: 6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width *1.5,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: checkvalue
                        ? Color.fromARGB(255, 3, 35, 212)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      HugeIcon(
                        size: 15.sp,
                        icon: HugeIcons.strokeRoundedHome01,
                        strokeWidth: 2,
                        color: checkvalue ? Colors.white : Colors.grey,
                      ),
                      SizedBox(height: 1.h),
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
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: !checkvalue
                        ? Color.fromARGB(255, 3, 35, 212)
                        : const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          HugeIcon(
                            size: 15.sp,
                            icon: HugeIcons.strokeRoundedMegaphone02,
                            strokeWidth: 2,
                            color: !checkvalue ? Colors.white : Colors.grey,
                          ),
                          if (checkvalue)
                            Container(
                              padding: EdgeInsets.only(left: 13.sp, bottom: 2),
                              child: Icon(
                                size: 7.sp,
                                Icons.circle,
                                color: Colors.orange,
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 1.h),
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
