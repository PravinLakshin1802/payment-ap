import 'package:flutter/material.dart';
import 'package:nayapay_clone/components/scroll_container.dart';

class ConstAppBarAndNavbar extends StatefulWidget {
  const ConstAppBarAndNavbar({Key? key}) : super(key: key);
  @override
  ConstAppBarAndNavbarState createState() => ConstAppBarAndNavbarState();
}

class ConstAppBarAndNavbarState extends State<ConstAppBarAndNavbar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: height * 0.125,
              color: Colors.orange,
            ),
            Container(
              height: height * 0.075,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: height * 0.037,
                        ),
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xfffdfafa),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Add Money",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffe08702),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Load wallet using linked bank account, bank transfer or deposit.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff909090),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ScrollContainer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: width * 0.05,
          child: Container(
            width: width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.03),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("My Wallet | Upgrade"),
                        Icon(
                          Icons.menu,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.015),
                    const Text(
                      "Rs. 100",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    const Text(
                      "Last updated moments ago",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: (width * 0.93) * 0.43,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "ADD MONEY",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: (width * 0.93) * 0.43,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.send,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "SEND MONEY",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
