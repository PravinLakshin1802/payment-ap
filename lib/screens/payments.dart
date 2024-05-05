import 'package:flutter/material.dart';
import 'package:nayapay_clone/components/dafault_tabbar.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 100,
              color: Colors.orange,
            ),
            const DefaultTabBarDemo(),
          ],
        ),
        Positioned(
          left: width * 0.05,
          child: Container(
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "My Wallet",
                            style: TextStyle(
                              color: Color(0xff4b504c),
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            "Rs. 100",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.menu,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(thickness: 0.5),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Transactions",
                        style: TextStyle(
                          color: Color(0xff4b504c),
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "This week",
                            style: TextStyle(
                              color: Color(0xff4b504c),
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.add_box_outlined,
                            color: Colors.green,
                            size: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Rs. 0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rs. 0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Total spent",
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            size: 11,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_back_sharp,
                            size: 11,
                            color: Colors.black,
                          ),
                          Text(
                            "Total income",
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
