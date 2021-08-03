import 'package:flutter/material.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/title_text.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
      required this.icon,
      required this.hintText,
      required this.controller,
      this.obsecureText = false,
      this.errorText = "",
      this.minLines = 1,
      this.maxLines = 1})
      : super(key: key);
  final IconData icon;
  final String hintText;
  final String errorText;
  final TextEditingController controller;
  final obsecureText;
  final int minLines, maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: LightColor.lightGrey.withAlpha(100),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TextFormField(
            controller: controller,
            obscureText: obsecureText,
            minLines: minLines,
            maxLines: maxLines,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 12),
                contentPadding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 0, top: 5),
                prefixIcon: Icon(icon, color: Colors.black54)),
          ),
        ),
        TitleText(
          text: errorText,
          fontSize: 10,
          fontWeight: FontWeight.w100,
          color: LightColor.red,
        ),
      ],
    );
  }
}
