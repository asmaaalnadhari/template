import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../model/WalletAppModel.dart';
import '../utils/WADataGenerator.dart';
import '../utils/WAWidgets.dart';


class WASendViaComponent extends StatefulWidget {
  static String tag = '/WASendViaComponent';

  final WACardModel? item;

  WASendViaComponent({this.item});

  @override
  WASendViaComponentState createState() => WASendViaComponentState();
}

class WASendViaComponentState extends State<WASendViaComponent> {
  List<WACardModel> sendViaCardList = waSendViaCardList();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: boxDecorationWithRoundedCorners(borderRadius: BorderRadius.circular(4), backgroundColor: widget.item!.color!),
          padding: EdgeInsets.all(4),
          width: 60,
          height: 40,
          child: waCommonCachedNetworkImage('${widget.item!.image}', fit: BoxFit.fill, color: Colors.white),
        ),
        16.width,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Bank Visa Card', style: boldTextStyle(size: 14), maxLines: 1), Text(widget.item!.cardNumber.validate(), style: secondaryTextStyle(size: 12))],
        ),
      ],
    );
  }
}
