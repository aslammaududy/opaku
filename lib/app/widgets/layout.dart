import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/themes/theme.dart';
import 'package:opaku/app/widgets/app_icon.dart';
import 'package:opaku/app/widgets/cart.dart';
import 'package:opaku/app/widgets/top_menu_bar.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: AppTheme.fullHeight(context) - 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TopMenuBar(),
              SizedBox(
                height: 10,
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
