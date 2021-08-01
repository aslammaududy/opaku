import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/data/app_data.dart';
import 'package:opaku/app/modules/detail/controllers/detail_controller.dart';
import 'package:opaku/app/routes/app_pages.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/themes/theme.dart';
import 'package:opaku/app/widgets/title_text.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: AppTheme.fullWidth(context),
      height: AppTheme.fullWidth(context) * .7,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        children: AppData.productList
            .map<Widget>((product) => InkWell(
                  onTap: () => Get.toNamed(Routes.DETAIL, arguments: product),
                  child: Container(
                      decoration: BoxDecoration(
                        color: LightColor.background,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xfff8f8f8),
                              blurRadius: 15,
                              spreadRadius: 10),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(
                          vertical: !product.isSelected ? 20 : 0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(height: product.isSelected ? 15 : 0),
                                Expanded(
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor:
                                            LightColor.orange.withAlpha(40),
                                      ),
                                      Image.asset(product.image ?? '')
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 5),
                                TitleText(
                                  text: product.name ?? '',
                                  fontSize: product.isSelected ? 16 : 14,
                                ),
                                TitleText(
                                  text: product.category ?? '',
                                  fontSize: product.isSelected ? 14 : 12,
                                  color: LightColor.orange,
                                ),
                                TitleText(
                                  text: product.price.toString(),
                                  fontSize: product.isSelected ? 18 : 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ))
            .toList(),
      ),
    );
  }
}
