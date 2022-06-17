import 'package:flutter/material.dart';

class FabBottomNavBar extends StatefulWidget {
  const FabBottomNavBar({Key? key}) : super(key: key);

  @override
  State<FabBottomNavBar> createState() => _FabBottomNavBarState();
}

class _FabBottomNavBarState extends State<FabBottomNavBar> {
  final placeholder = const Opacity(
    opacity: 0,
    child: IconButton(onPressed: null, icon: Icon(Icons.no_cell)),
  );
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromRGBO(37, 37, 37, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabItem(
            index: 0,
            iconData: Icons.wallet_giftcard,
            label: "Wallet",
          ),
          buildTabItem(
            index: 0,
            iconData: Icons.photo_library_outlined,
            label: "Gallery",
          ),
          placeholder,
          buildTabItem(
            index: 0,
            iconData: Icons.star_outline,
            label: "Favourites",
          ),
          buildTabItem(
            index: 0,
            iconData: Icons.settings_outlined,
            label: "Settings",
          )
        ],
      ),
    );
  }

  Widget buildTabItem(
      {required int index, required IconData iconData, required String label}) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
        ),
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Icon(
                iconData,
                color: Colors.yellow,
              ),
              Text(
                label,
                style: const TextStyle(color: Colors.yellow),
              ),
            ],
          ),
        ));
  }
}
