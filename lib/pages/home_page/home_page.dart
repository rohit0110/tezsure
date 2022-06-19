import 'package:flutter/material.dart';
import 'package:tezsure/pages/home_page/components/bottom_modal_sheet.dart';
import 'package:tezsure/pages/home_page/components/bottom_nav_bar.dart';
import 'package:tezsure/pages/home_page/components/destructive_card.dart';
import 'package:tezsure/pages/home_page/components/portfolio_card.dart';
import 'package:tezsure/pages/home_page/components/tokens.dart';
import 'package:tezsure/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool cardsDestroyed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: cardsDestroyed ? 3 : 4,
                  child: Container(
                    color: const Color.fromRGBO(37, 37, 37, 1),
                  ),
                ),
                Expanded(
                  flex: cardsDestroyed ? 7 : 6,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const PortfolioCard(),
                Stack(
                  children: const [
                    Positioned(
                      child: DestructiveCard(
                        index: 0,
                        bgPath: "assets/images/discover_dapps.jpg",
                        heading: "DISCOVER DAPPS",
                        subheading: "join the metaverse",
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: DestructiveCard(
                        index: 1,
                        bgPath: "assets/images/bake_tez.jpg",
                        heading: "BAKE TEZ",
                        subheading: "and earn rewards",
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 20,
                      child: DestructiveCard(
                        index: 2,
                        bgPath: "assets/images/buy_tez.jpg",
                        heading: "BUY TEZ",
                        subheading: "Buy tez with cash now",
                      ),
                    ),
                  ],
                ),
                const Expanded(child: TokenList()),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(defaultPadding),
              ),
            ),
            context: context,
            builder: (context) {
              return BottomModalSheet(selectedIndex: selectedIndex);
            },
          ),
          backgroundColor: const Color.fromRGBO(37, 37, 37, 1),
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
