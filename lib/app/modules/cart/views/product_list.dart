import 'package:flutter/material.dart';
import 'package:opaku/app/data/product.dart';
import 'package:opaku/app/modules/cart/controllers/cart_controller.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/title_text.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key, required this.model, required this.controller})
      : super(key: key);
  final Product model;
  final CartController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.2,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: LightColor.lightGrey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset(
                    model.image ?? '',
                    width: 110,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListTile(
              title: TitleText(
                text: model.name ?? '',
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              subtitle: Row(
                children: <Widget>[
                  TitleText(
                    text: '${controller.productPrice[model.id]}',
                    color: LightColor.red,
                    fontSize: 12,
                  ),
                ],
              ),
              trailing: Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: LightColor.lightGrey.withAlpha(150),
                    borderRadius: BorderRadius.circular(10)),
                child: TitleText(
                  text: 'x ${controller.productCount[model.id]}',
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
