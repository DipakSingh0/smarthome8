import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;
  // final TextColor? textColor;

  RoundedButton({
    required this.btnName,
    this.bgColor = Colors.blue,
    this.icon,
    this.textStyle,
    required this.callBack, required Null Function() OnPressed, 
    // this.textColor = Colors.white,
    
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: callBack,
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        // mainAxisAlignment: MainAxisAlignment.center
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (icon != null) SizedBox(width: 8),
            Text(
              btnName,
              style: textStyle,
            
            ),
          ],
        ),
      ),
    );
  }
}
