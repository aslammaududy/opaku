import 'package:flutter/material.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/themes/theme.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
      {Key? key, required this.icon, this.color = LightColor.iconColor})
      : super(key: key);
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: Theme.of(context).backgroundColor,
          boxShadow: AppTheme.shadow),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
