import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sudan/generated/l10n.dart';
import 'package:sudan/provider/locael_prov.dart';

import 'package:sudan/screen/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool check = true;
  String _flagCurrent = 'assets/images/flag2.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                // ignore: deprecated_member_use
                colors: [Colors.black.withOpacity(0.6), Colors.black],
              ),
            ),
          ),

          /// Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        final localeProvider = Provider.of<LocaleProvider>(
                          context,
                          listen: false,
                        );

                        if (check) {
                          localeProvider.changeLocale('ar');
                         
                            _flagCurrent = 'assets/images/sudanflag.png';
                        
                        } else {
                          localeProvider.changeLocale('en');
                        
                            _flagCurrent = 'assets/images/flag2.png';
                        
                        }

                        setState(() {
                          check = !check;
                        });
                      },
                      child: Text(
                        S.of(context).Language,
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Image.asset(
                      _flagCurrent,
                      height: 32,
                      width: 32,
                    ),
                  ],
                ),

                const Spacer(),

                Image.asset(
                  "assets/images/studal.png",
                  width: 288,
                  height: 288,
                ),

                const Spacer(),

                Container(
                  width: double.infinity,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 0, 100, 1),
                        Color.fromARGB(255, 43, 0, 200),
                        Color.fromARGB(255, 43, 0, 200),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      // Navigator.of(context).push(
                      //   PageRouteBuilder(
                      //     transitionDuration: const Duration(milliseconds: 400),
                      //     pageBuilder:
                      //         (context, animation, secondaryAnimation) =>
                      //             const HomePage(),
                      //     transitionsBuilder:
                      //         (context, animation, secondaryAnimation, child) {
                      //           const begin = Offset(1.0, 0.0); // from right
                      //           const end = Offset.zero;
                      //           const curve = Curves.easeInOut;

                      //           var tween = Tween(
                      //             begin: begin,
                      //             end: end,
                      //           ).chain(CurveTween(curve: curve));

                      //           return SlideTransition(
                      //             position: animation.drive(tween),
                      //             child: child,
                      //           );
                      //         },
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      S.of(context).signin,
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
