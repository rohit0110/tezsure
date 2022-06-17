import 'package:flutter/material.dart';
import 'package:tezsure/utils/constants.dart';

class TokenList extends StatefulWidget {
  const TokenList({Key? key}) : super(key: key);

  @override
  State<TokenList> createState() => _TokenListState();
}

class _TokenListState extends State<TokenList> {
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
                onPressed: () {},
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
              itemCount: 4,
              itemBuilder: ((context, index) {
                return tokenCard();
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget tokenCard() {
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
              const Icon(
                Icons.swap_horizontal_circle,
                color: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Tezos",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Xtz",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "64",
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
              Text(
                "\$255.21",
                style: TextStyle(
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
