import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sort By",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TextButton(
                  onPressed: () {
                    widget.callback(widget.selectedIndex);
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Done",
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
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
                  padding: const EdgeInsets.all(defaultPadding),
                  color: widget.selectedIndex == 0
                      ? Colors.yellow
                      : Colors.transparent,
                  child: Text(
                    "Price: Lowest to high",
                    style: TextStyle(
                      color: widget.selectedIndex == 0
                          ? Colors.black
                          : Colors.white,
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
                  padding: const EdgeInsets.all(defaultPadding),
                  color: widget.selectedIndex == 1
                      ? Colors.yellow
                      : Colors.transparent,
                  child: Text(
                    "Price: Highest to low",
                    style: TextStyle(
                      color: widget.selectedIndex == 1
                          ? Colors.black
                          : Colors.white,
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
