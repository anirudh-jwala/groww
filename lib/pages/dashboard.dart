import 'package:flutter/material.dart';

// Pages
import 'package:groww/pages/more.dart';
import 'package:groww/pages/mutual_funds.dart';
import 'package:groww/pages/stocks.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Widget> _bottomNavigationPages = [
    const StocksPage(),
    const MutualFundsPage(),
    const MorePage(),
  ];

  var _currentSelectionPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavigationPages[_currentSelectionPage],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentSelectionPage,
        onDestinationSelected: (newIndex) {
          setState(() {
            _currentSelectionPage = newIndex;
          });
        },
        backgroundColor: Colors.white,
        height: 65.0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.trending_up_outlined),
            selectedIcon: Icon(Icons.trending_up),
            label: 'Stocks',
          ),
          NavigationDestination(
            icon: Icon(Icons.pie_chart_outline),
            selectedIcon: Icon(Icons.pie_chart),
            label: 'Mutual Funds',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            selectedIcon: Icon(Icons.grid_view),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
