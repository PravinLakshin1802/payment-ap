import 'package:flutter/material.dart';
import 'package:nayapay_clone/reusable_components/reusable_card.dart';

class VirtualCard extends StatelessWidget {
  const VirtualCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20,
        bottom: 25,
      ),
      child: Center(
        child: ReusableCard(
          cardType: "Visa Virtual",
          cardEndNum: "9583",
          isCardVirtual: true,
        ),
      ),
    );
  }
}
