import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tezsure/utils/constants.dart';

// ignore: must_be_immutable
class BottomModalSheet extends StatefulWidget {
  BottomModalSheet(
      {Key? key, required this.selectedIndex, required this.callback})
      : super(key: key);
  int selectedIndex;
  final ValueSetter<int> callback;
  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(37, 37, 37, 1),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(defaultPadding),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Container(
            height: 6,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sort By",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    widget.callback(widget.selectedIndex);
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Done",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.selectedIndex = 0;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding / 2,
                  ),
                  color: widget.selectedIndex == 0
                      ? Colors.yellow
                      : Colors.transparent,
                  child: Text(
                    "Price: Lowest to high",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: widget.selectedIndex == 0
                            ? Colors.black
                            : Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.selectedIndex = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding / 2,
                  ),
                  color: widget.selectedIndex == 1
                      ? Colors.yellow
                      : Colors.transparent,
                  child: Text(
                    "Price: Highest to low",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: widget.selectedIndex == 1
                            ? Colors.black
                            : Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
