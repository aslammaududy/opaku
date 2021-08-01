import 'package:flutter/material.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/title_text.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.text, required this.onPressed}) : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: LightColor.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 5),
          child: TitleText(
            text: text,
            color: LightColor.background,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}
