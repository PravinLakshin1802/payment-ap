import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 60),
              Container(
                child: ButtonsTabBar(
                  onTap: (int value) {},
                  backgroundColor: Colors.green,
                  unselectedBackgroundColor: const Color(0xffefe9e9),
                  buttonMargin: const EdgeInsets.all(10),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  duration: 100,
                  height: 55,
                  radius: 20,
                  tabs: const [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("All"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("Spent"),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("Income"),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.orange,
                      child: const Center(
                        child: Text("All"),
                      ),
                    ),
                    Container(
                      color: Colors.orange,
                      child: const Center(
                        child: Text("Spent"),
                      ),
                    ),
                    Container(
                      color: Colors.orange,
                      child: const Center(
                        child: Text("Income"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
