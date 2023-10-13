import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Button({super.key, 
  required this.title,
  this.color=const Color(0xffa5a5a5),
  required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding:const EdgeInsets.all(10),
        child: InkWell(
          onTap: onPress,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              height: 60,
              color: color,
              child: Center(
                child: Text(title,style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
