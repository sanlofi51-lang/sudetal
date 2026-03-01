

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({super.key, required this.early});
  bool early;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(244, 241, 239, 239),
      alignment: Alignment.center,
      constraints: BoxConstraints(minHeight: early ? 380 : 230, minWidth: 800),

      child: SingleChildScrollView(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20,),

                //  margin: EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      early ? "Out of Boundaries!" : 'Early Checkout!',
                      style: GoogleFonts.ptSans(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                   if(early) Text(
                         "Add justification for your current location.",
                      style: GoogleFonts.openSans(
                        fontSize: 14,

                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),

                    if (early)
                      TextField(
                        maxLines: 4,

                        decoration: InputDecoration(
                          hintText: "Write your justification here...",
                          filled: true,

                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            gapPadding: 12,
                            //borderSide: BorderSide.,
                          ),
                        ),
                      ),

                    SizedBox(height: 10),
                    Row(
                      children: [
                        HugeIcon(
                          icon: HugeIcons.strokeRoundedInformationCircle,
                          color: Color.fromARGB(255, 126, 2, 2),
                          size: 14,
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Incomplete working hours !",
                          style: GoogleFonts.openSans(
                            fontSize: 14,

                            color: const Color.fromARGB(255, 126, 2, 2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                          "Cancel",
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
            ],
          ),
        ),
      ),
    );
  }
}
