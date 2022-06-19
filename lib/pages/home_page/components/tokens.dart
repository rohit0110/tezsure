import 'package:flutter/material.dart';
import 'package:tezsure/pages/home_page/components/bottom_modal_sheet.dart';
import 'package:tezsure/utils/constants.dart';

class TokenList extends StatefulWidget {
  const TokenList({Key? key}) : super(key: key);

  @override
  State<TokenList> createState() => _TokenListState();
}

class _TokenListState extends State<TokenList> {
  List<List<String>> tokens = [
    ["Tezos", "XTZ", "assets/images/tezos_logo.png", "64", "\$255.21"],
    ["Dogami", "Doga", "assets/images/dogami_logo.png", "764", "\$55.21"],
    ["GIF", "Gif", "assets/images/gif_logo.png", "0.0164", "\$1.21"],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "All tokens",
                style: TextStyle(color: Colors.white),
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
                      return BottomModalSheet(selectedIndex: 0);
                    },
                  );
                },
                child: Row(
                  children: const [
                    Icon(
                      Icons.swap_vert,
                      color: Colors.black,
                    ),
                    Text(
                      "Sort By",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
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
                  tokens[index][4],
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
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
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
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    subheading,
                    style: const TextStyle(color: Colors.grey),
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
                style: const TextStyle(
                  color: Colors.yellow,
                ),
              ),
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
