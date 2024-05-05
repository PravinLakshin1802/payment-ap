import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final String name;
  final Icon icon;

  const ReusableContainer({
    Key? key,
    required this.name,
    required this.icon,
  });

  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          icon,
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
