import 'package:flutter/material.dart';

import '../components/footer_quote.dart';
import '../components/side_menu.dart';
import '../components/timer_card.dart';
import '../components/user_card.dart';
import '../constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const SideMenu(),
              const SizedBox(width: 16.0),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: const [
                          TimerCard(),
                          SizedBox(width: 16.0),
                          UserCard()
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const FooterQuote()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
