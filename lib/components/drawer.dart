import 'package:flutter/material.dart';
import 'package:nayapay_clone/components/drawer_options.dart';

class NayapayDrawer extends StatelessWidget {
  const NayapayDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green.shade400,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/profile_image.jpg"),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Amrat",
                        style: TextStyle(
                          color: Color(0xfff9f6f6),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "amrat@nayapay",
                        style: TextStyle(
                          color: Color(0xfff2eaea),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.help_outline_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                  bottom: 5,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "CONTACT SUPPORT",
                        style: TextStyle(
                          color: Colors.green.shade400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              DrawerOptions(
                onTap: () {},
                text: "Settings",
                icon: const Icon(Icons.settings_outlined),
              ),
              DrawerOptions(
                onTap: () {},
                text: "Give us feedback",
                icon: const Icon(Icons.feedback_outlined),
              ),
              DrawerOptions(
                onTap: () {},
                text: "Stickers",
                icon: const Icon(Icons.sticky_note_2_outlined),
              ),
              DrawerOptions(
                onTap: () {},
                text: "Help",
                icon: const Icon(Icons.help_outline_outlined),
              ),
              DrawerOptions(
                onTap: () {},
                text: "Log Out",
                icon: const Icon(Icons.logout_outlined),
              ),
              const SizedBox(height: 150),
              Center(
                child: Text(
                  "APP VERSION 1.5.0 (100)",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green.shade300,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
