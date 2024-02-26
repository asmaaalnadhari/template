import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/WAColors.dart';
import '../utils/WAConstants.dart';


class PurchaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AppButton(
          text: "Purchase for more screen",
          color: WAPrimaryColor,
          textStyle: boldTextStyle(color: Colors.white),
          shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
          onTap: () {
            launchUrl(purchaseURL);
          },
        ).center(),
      ),
    );
  }
}
