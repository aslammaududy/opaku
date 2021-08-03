import 'package:flutter/material.dart';
import 'package:opaku/app/data/payment.dart';
import 'package:get/get.dart';

class PaymentConfirmationDialog extends StatelessWidget {
  const PaymentConfirmationDialog(
      {Key? key, required this.payment, required this.amount})
      : super(key: key);

  final Payment payment;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 50,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Please transfer to the following bank account", style: TextStyle(fontSize: 10),),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Bank:"),
            Text("${payment.name}"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Account No.:"),
            Text("91833183471"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Amount:"),
            Text("$amount"),
          ],
        ),
      ],
    ).marginSymmetric(horizontal: 10);
  }
}
