import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tezsure/utils/constants.dart';

class FabBottomNavBar extends StatefulWidget {
  const FabBottomNavBar({Key? key, required this.index, required this.callback})
      : super(key: key);
  final int index;
  final ValueChanged<int> callback;
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
            index: 1,
            iconData: Icons.photo_library_outlined,
            label: "Gallery",
          ),
          placeholder,
          buildTabItem(
            index: 2,
            iconData: Icons.star_outline,
            label: "Favourites",
          ),
          buildTabItem(
            index: 3,
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
        onPressed: () {
          widget.callback(index);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Icon(
                iconData,
                color: widget.index == index ? defaultYellow : Colors.white,
              ),
              Text(
                label,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: widget.index == index ? defaultYellow : Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
