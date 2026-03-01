import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sudan/widgets/alert.dart';
import 'package:sudan/widgets/balance.dart';
import 'package:sudan/widgets/card_rec.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(context) {
    void checkOut() {
      showDialog(
        barrierDismissible: false,

        context: context,
        builder: (ctx) => AlertScreen(early: true),
      );
    }

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 243, 243),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,

                        backgroundImage: AssetImage("assets/images/avtar.png"),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Ali!",
                              style: GoogleFonts.ptSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Development Team",
                              style: GoogleFonts.ptSans(
                                fontSize: 12,

                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(width: 15,),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(211, 247, 247, 245),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(131, 158, 158, 158),
                              blurRadius: 6,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: HugeIcon(
                            icon: HugeIcons.strokeRoundedLogoutCircle02,
                            size: 30,
                            color: const Color.fromARGB(255, 13, 75, 126),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CardRec(
                              title: "Check-in time",
                              time: "9:00 AM",
                              status: "On-time",
                              color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            CardRec(
                              title: "Check-out time",
                              time: "Not yet",
                              status: "Pending",
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/images/map.png",
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: checkOut,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              side: BorderSide(
                                color: const Color.fromARGB(255, 9, 79, 136),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "Check Out",
                              style: TextStyle(
                                color: Color(0xff1D23D3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsetsGeometry.all(1),
                    child: Row(
                      children: [
                        Balance(title: "Regular Balance ", value: 11),
                        SizedBox(width: 10),
                        Balance(title: "Emergency Balance ", value: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
