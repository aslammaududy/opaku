import 'package:flutter/material.dart';
import 'package:opaku/app/data/payment.dart';
import 'package:opaku/app/widgets/title_text.dart';

class Payments extends StatelessWidget {
  const Payments(
      {Key? key, required this.payment, required this.selectedPayment})
      : super(key: key);
  final Payment payment;
  final Widget selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                payment.image ?? '',
                width: 50,
              ),
              Expanded(
                child: ListTile(
                  dense: true,
                  title: TitleText(
                    text: payment.name ?? '',
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                  trailing: selectedPayment,
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
    ;
  }
}
