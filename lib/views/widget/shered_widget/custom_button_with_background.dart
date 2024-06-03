import 'package:flutter/material.dart';

class CustomTextButtonWithColorBackground extends StatelessWidget {
  final VoidCallback? onPressed;
   final String? text;
  final  TextStyle textStyle;
   const CustomTextButtonWithColorBackground({super.key, this.onPressed, this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container( width: double.infinity,decoration: BoxDecoration(color: Colors.white.withOpacity(0.37) , borderRadius: BorderRadius.circular(15)),
    height: 50,
      child: TextButton(
        onPressed: onPressed,
      child: Text(text??'' ,style: textStyle),
      ),
    );
  }
}
