import 'package:flutter/material.dart';
import 'package:tezsure/pages/home_page/components/bottom_nav_bar.dart';
import 'package:tezsure/pages/home_page/components/destructive_card.dart';
import 'package:tezsure/pages/home_page/components/portfolio_card.dart';
import 'package:tezsure/pages/home_page/components/tokens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 17,
                  child: Container(
                    color: const Color.fromRGBO(37, 37, 37, 1),
                  ),
                ),
                Expanded(
                  flex: 33,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                PortfolioCard(),
                DestructiveCard(),
                Expanded(child: TokenList()),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
          onPressed: () {},
          elevation: 0,
          child: const Icon(
            Icons.swap_vert_circle,
            color: Colors.yellow,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const FabBottomNavBar(),
      ),
    );
  }
}
