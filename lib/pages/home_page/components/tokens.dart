import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tezsure/pages/home_page/components/bottom_modal_sheet.dart';
import 'package:tezsure/utils/constants.dart';

// ignore: must_be_immutable
class TokenList extends StatefulWidget {
  TokenList({
    Key? key,
    required this.selectedIndex,
    required this.callback,
  }) : super(key: key);
  int selectedIndex;
  final ValueSetter<int> callback;
  @override
  State<TokenList> createState() => _TokenListState();
}

class _TokenListState extends State<TokenList> {
  List<List<dynamic>> tokens = [
    ["Tezos", "XTZ", "assets/images/tezos_logo.png", "64", 255.21],
    ["Dogami", "Doga", "assets/images/dogami_logo.png", "764", 55.21],
    ["GIF", "Gif", "assets/images/gif_logo.png", "0.0164", 1.21],
  ];

  @override
  Widget build(BuildContext context) {
    if (widget.selectedIndex == 0) {
      tokens.sort((a, b) {
        return a[4].compareTo(b[4]) as int;
      });
    } else {
      tokens.sort((b, a) {
        return a[4].compareTo(b[4]) as int;
      });
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All tokens",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(defaultPadding),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return BottomModalSheet(
                        selectedIndex: widget.selectedIndex,
                        callback: (val) {
                          setState(() {
                            widget.selectedIndex = val;
                          });
                        },
                      );
                    },
                  );
                  widget.callback(widget.selectedIndex);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.swap_vert,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "Sort By",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(defaultYellow),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: ((context, index) {
                return tokenCard(
                  tokens[index][0],
                  tokens[index][1],
                  tokens[index][2],
                  tokens[index][3],
                  tokens[index][4].toString(),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget tokenCard(
    String heading,
    String subheading,
    String path,
    String total,
    String amount,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding - 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: tokenBorderColor,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(image: AssetImage(path)),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    subheading,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                total,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: defaultYellow,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                "\$$amount",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
