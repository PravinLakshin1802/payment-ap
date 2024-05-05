import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PhysicalCardInfo extends StatefulWidget {
  const PhysicalCardInfo({Key? key}) : super(key: key);
  @override
  State<PhysicalCardInfo> createState() => _PhysicalCardInfoState();
}

class _PhysicalCardInfoState extends State<PhysicalCardInfo> {
  bool _internationalTrans = true;
  bool _onlinePay = true;
  bool _spendingControl = false;
  bool _chipAndPinPay = true;
  bool _tapAndPay = true;

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
                  Icons.map,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: const Text(
                "International Transaction",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                value: _internationalTrans,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _internationalTrans = value;
                  });
                },
              ),
            ),
            const Divider(
              thickness: 0.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.payments,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: const Text(
                "Online Payments",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                value: _onlinePay,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _onlinePay = value;
                  });
                },
              ),
            ),
            const Divider(
              thickness: 0.5,
            ),
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
                "Set a monthly spending limit for you debit card",
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
                  Icons.pin_outlined,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: Text(
                "Change PIN",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
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
            ),
            const Divider(
              thickness: 0.5,
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "ADVANCED CONTROLS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.pin_outlined,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: const Text(
                "Chip & PIN Payments",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                  value: _chipAndPinPay,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _chipAndPinPay = value;
                    });
                  }),
            ),
            const Divider(
              thickness: 0.5,
            ),
            ListTile(
              leading: const CircleAvatar(
                child: Icon(
                  Icons.pin_outlined,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              title: const Text(
                "Tapp and Pay",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Switch(
                  value: _tapAndPay,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      _tapAndPay = value;
                    });
                  }),
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
                    "Daily ATM Limit",
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
                          "Rs. 10,000",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
                  const SizedBox(height: 10),
                  const Text(
                    "Daily POS Limit",
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
