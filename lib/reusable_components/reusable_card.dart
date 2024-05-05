import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String cardType;
  final String cardEndNum;
  final bool isCardVirtual;

  const ReusableCard({
    Key? key,
    required this.cardType,
    required this.cardEndNum,
    required this.isCardVirtual,
  }) : super(key: key);

  Widget cardNumDotContainer() {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget cvvNumDotContainer() {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      cardType,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 0.5,
                      color: const Color(0xff408242),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "NAYA",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PAY",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            isCardVirtual
                ? const Text(
                    "Online Transactions Only",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                : const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                  ],
                ),
                Row(
                  children: [
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                  ],
                ),
                Row(
                  children: [
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                    const SizedBox(width: 2),
                    cardNumDotContainer(),
                  ],
                ),
                Text(
                  cardEndNum,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "VALID THRU 03/27",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "CVV ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    Row(
                      children: [
                        cvvNumDotContainer(),
                        const SizedBox(width: 2),
                        cvvNumDotContainer(),
                        const SizedBox(width: 2),
                        cvvNumDotContainer(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Amrat",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "VISA",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
