import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class VirtualCardInfo extends StatefulWidget {
  const VirtualCardInfo({Key? key}) : super(key: key);
  @override
  State<VirtualCardInfo> createState() => _VirtualCardInfoState();
}

class _VirtualCardInfoState extends State<VirtualCardInfo> {
  bool _spendingControl = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      backgroundColor: Colors.green,
                      radius: 15,
                    ),
                    Center(
                      child: Text(
                        "Freeze Card",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      child: Center(
                        child: Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      backgroundColor: Colors.green,
                      radius: 15,
                    ),
                    Center(
                      child: Text(
                        "Reveal",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.stop,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: const Text(
                "Spending Control",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "Set a monthly spending limit for your debit card",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Switch(
                value: _spendingControl,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _spendingControl = value;
                  });
                },
              ),
            ),
            const Divider(
              thickness: 0.5,
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.timelapse,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: Text(
                "Card Transactions",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Track and monitor your expenses",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Icon(
                Icons.forward,
                color: Color(0xffe8e2e2),
              ),
            ),
            const Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "CARD LIMITS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Daily Online Transactions",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  LinearPercentIndicator(
                    barRadius: const Radius.circular(5),
                    backgroundColor: const Color(0xffcfc1c1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Rs. 0",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Spent",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Rs. 50,000",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
