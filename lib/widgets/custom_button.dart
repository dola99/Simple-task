import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final double? width;
  final double? height;
  final String? titleText;
  final Function()? onPressed;
  final Color? color;
  final Color? textcolor;
  final double? fontSize;
  const CustomButtom({
    Key? key,
    this.height,
    this.onPressed,
    this.titleText,
    this.width,
    this.color,
    this.textcolor,
    this.fontSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Text(
            titleText!,
            style: TextStyle(
              color: textcolor,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
