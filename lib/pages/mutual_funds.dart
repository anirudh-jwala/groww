import 'package:flutter/material.dart';

class MutualFundsPage extends StatefulWidget {
  const MutualFundsPage({Key? key}) : super(key: key);

  @override
  State<MutualFundsPage> createState() => _MutualFundsPageState();
}

class _MutualFundsPageState extends State<MutualFundsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Container(
            height: 42.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1.2,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset(
                    "assets/images/groww-logo.png",
                    width: 28.0,
                    height: 28.0,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.search,
                          size: 18,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      TextSpan(
                        text: " Search Groww",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    "assets/images/groww-logo.png",
                    width: 28.0,
                    height: 28.0,
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: 2.5,
            enableFeedback: true,
            labelStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
            tabs: const [
              Tab(
                text: 'Explore',
              ),
              Tab(
                text: 'Dashboard',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Explore',
              ),
            ),
            Center(
              child: Text(
                'Dashboard',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
