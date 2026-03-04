import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:sudan/generated/l10n.dart';
import 'package:sudan/widgets/alert.dart';
import 'package:sudan/widgets/balance.dart';
import 'package:sudan/widgets/card_rec.dart';
import 'package:intl/intl.dart';

class Homestander extends StatelessWidget {
  const Homestander({super.key});
  @override
  Widget build(context) {
    
    bool isArabic() {
      return Intl.getCurrentLocale() == "ar";
    }

    void checkOut() {
      showDialog(
        barrierDismissible: false,

        context: context,
        builder: (ctx) => AlertScreen(early: false),
      );
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 140),

      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 251, 255),
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
                              S.of(context).Hello,
                              style: GoogleFonts.ptSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              S.of(context).Development,
                              style: GoogleFonts.ptSans(
                                fontSize: 12,

                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

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
                            icon: !isArabic()
                                ? HugeIcons.strokeRoundedLogoutCircle02
                                : HugeIcons.strokeRoundedLoginCircle02,
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
                  const SizedBox(height: 30),
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
                              title: S.of(context).Checkin,
                              time: "9:00 AM",
                              status: S.of(context).on_time,
                              color: Colors.green,
                            ),
                            SizedBox(width: 10),
                            CardRec(
                              title: S.of(context).Checkout,
                              time: S.of(context).Notyet,
                              status: S.of(context).pending,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/images/map.png",
                            height: 250,
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
                            child: Text(
                              S.of(context).checkout,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 29, 35, 211),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsetsGeometry.all(1),
                    child: Row(
                      children: [
                        Balance(title: S.of(context).Regular, value: 11),
                        SizedBox(width: 10),
                        Balance(title: S.of(context).Emergency, value: 5),
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
