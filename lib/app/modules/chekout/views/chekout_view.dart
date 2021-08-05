import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opaku/app/data/app_data.dart';
import 'package:opaku/app/data/payment.dart';
import 'package:opaku/app/data/shipping.dart';
import 'package:opaku/app/modules/chekout/views/pay_confirm_dialog.dart';
import 'package:opaku/app/modules/chekout/views/payments.dart';
import 'package:opaku/app/modules/chekout/views/shippings.dart';
import 'package:opaku/app/themes/light_color.dart';
import 'package:opaku/app/widgets/button.dart';
import 'package:opaku/app/widgets/input_field.dart';
import 'package:opaku/app/widgets/layout.dart';

import '../controllers/chekout_controller.dart';

class ChekoutView extends GetView<ChekoutController> {
  @override
  Widget build(BuildContext context) {
    var analytics = Get.find<FirebaseAnalytics>();

    var paymentId = 0.obs;
    var shippingId = 0.obs;
    late Payment paymentToUse;
    late Shipping shippingToUse;
    var amount = Get.arguments;

    return Scaffold(
      body: Layout(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Checkout',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            InputField(
                icon: Icons.home,
                hintText: "Address",
                maxLines: 5,
                controller: controller.addressController),
            SizedBox(
              height: 30,
            ),
            Text("Choose Payment"),
            for (var payment in AppData.paymentList)
              ObxValue(
                  (id) => InkWell(
                        onTap: () {
                          paymentId.value = payment.id!;
                          paymentToUse = payment;
                        },
                        child: Payments(
                          payment: payment,
                          selectedPayment: paymentId == payment.id
                              ? Icon(
                                  Icons.check,
                                  color: LightColor.orange,
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                  paymentId),
            SizedBox(
              height: 30,
            ),
            Text("Choose Shipping"),
            for (var shipping in AppData.shippingList)
              ObxValue(
                  (id) => InkWell(
                        onTap: () {
                          shippingToUse = shipping;
                          shippingId.value = shipping.id!;
                        },
                        child: Shippings(
                          shipping: shipping,
                          selectedShipping: shippingId == shipping.id
                              ? Icon(
                                  Icons.check,
                                  color: LightColor.orange,
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                  shippingId),
            SizedBox(
              height: 50,
            ),
            Button(
              text: "Pay",
              onPressed: () {
                analytics.logEvent(name: "selected_payment", parameters: {
                  "bank_name": paymentToUse.name,
                });

                analytics.logEvent(
                    name: "selected_shipping",
                    parameters: {"shipping_name": shippingToUse.name});
                Get.defaultDialog(
                  title: "",
                  content: PaymentConfirmationDialog(
                      payment: paymentToUse, amount: amount),
                );
              },
            ),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
