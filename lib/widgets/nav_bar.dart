import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({super.key, required this.title, required this.icona,required this.checkitem});
  IconData icona;
  String title;
  bool checkitem;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(context) {
    return
     
    Expanded(
      child: GestureDetector(
        onTap: () {},
        child: AnimatedContainer(
          
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: widget.checkitem ? Colors.blue : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.icona, color: widget.checkitem ? Colors.white : Colors.grey),
              SizedBox(height: 4),
              Text(
                widget.title,
                style: TextStyle(color: widget.checkitem ? Colors.white : Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

