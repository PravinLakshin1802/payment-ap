import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:nayapay_clone/components/physical_card.dart';
import 'package:nayapay_clone/components/physical_card_bottom_info.dart';
import 'package:nayapay_clone/components/virtual_card.dart';
import 'package:nayapay_clone/components/virtual_card_bottom_info.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);
  @override
  State<CardsScreen> createState() => CardsScreenState();
}

class CardsScreenState extends State<CardsScreen> {
  final pageViewController = PageController();
  bool cardBottomContent = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xfffbf9f9),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.5, 0),
                  blurRadius: 0.1,
                  color: Colors.grey,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView(
                    controller: pageViewController,
                    children: const [
                      VirtualCard(),
                      PhysicalCard(),
                    ],
                    onPageChanged: (value) {
                      setState(() {
                        cardBottomContent = !cardBottomContent;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: pageViewController,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.green,
                    dotColor: Colors.grey.shade200,
                    spacing: 8,
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Expanded(
            child: cardBottomContent
                ? const PhysicalCardInfo()
                : const VirtualCardInfo(),
          )
        ],
      ),
    );
  }
}
