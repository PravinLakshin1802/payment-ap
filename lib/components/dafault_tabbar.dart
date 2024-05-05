import 'package:flutter/material.dart';
import 'package:nayapay_clone/components/payments_tab_view.dart';

class DefaultTabBarDemo extends StatefulWidget {
  const DefaultTabBarDemo({Key? key}) : super(key: key);
  @override
  State<DefaultTabBarDemo> createState() => _DefaultTabBarDemoState();
}

class _DefaultTabBarDemoState extends State<DefaultTabBarDemo>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TabController _tabController = TabController(length: 3, vsync: this);
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Container(
              margin: EdgeInsets.only(
                left: width * 0.05,
                bottom: 10,
              ),
              height: 35,
              width: width * 0.8,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xff336334),
                indicator: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: const [
                  Tab(
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text(
                        "Spent",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text(
                        "Income",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: width * 0.052,
                  right: width * 0.052,
                ),
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    PaymentsTabView(),
                    PaymentsTabView(),
                    PaymentsTabView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
