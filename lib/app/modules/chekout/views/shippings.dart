import 'package:flutter/material.dart';
import 'package:opaku/app/data/shipping.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/title_text.dart';

class Shippings extends StatelessWidget {
  const Shippings(
      {Key? key, required this.shipping, required this.selectedShipping})
      : super(key: key);
  final Shipping shipping;
  final Widget selectedShipping;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                shipping.image ?? '',
                width: 50,
              ),
              Expanded(
                child: ListTile(
                  dense: true,
                  title: TitleText(
                    text: shipping.name ?? '',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  subtitle: Row(
                    children: [
                      TitleText(
                        text: "cost: ",
                        fontSize: 12,
                      ),
                      TitleText(
                        text: " ${shipping.cost}",
                        color: LightColor.orange,
                        fontSize: 12,
                      ),
                    ],
                  ),
                  trailing: selectedShipping,
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
