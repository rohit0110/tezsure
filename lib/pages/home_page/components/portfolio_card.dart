import 'package:flutter/material.dart';
import 'package:tezsure/utils/constants.dart';

class PortfolioCard extends StatefulWidget {
  const PortfolioCard({Key? key}) : super(key: key);

  @override
  State<PortfolioCard> createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Portfolio Balance",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "\$46.78",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Text(
                      "Jon Ben",
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultPadding),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: defaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_downward,
                          color: Colors.black,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            const CircleBorder(),
                          ),
                        ),
                      ),
                      const Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            const CircleBorder(),
                          ),
                        ),
                      ),
                      const Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.qr_code,
                      color: Colors.black,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                    ),
                  ),
                  const Text(
                    "Scan",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
