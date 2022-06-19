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
        border: Border.all(
          color: borderColor,
        ),
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
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "\$46.78",
                    style: TextStyle(
                      color: defaultYellow,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage("assets/images/profile_picture.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Jon Ben",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(defaultYellow),
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
                        child: const Image(
                          image: AssetImage("assets/images/arrow_upward.png"),
                          fit: BoxFit.fill,
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            const CircleBorder(),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(25, 25)),
                        ),
                      ),
                      const Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Image(
                          image:
                              AssetImage("assets/images/bottom_left_arrow.png"),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            const CircleBorder(),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(25, 25)),
                        ),
                      ),
                      const Text(
                        "Receive",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
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
                    child: const Image(
                      image: AssetImage("assets/images/qr_code.png"),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(25, 25)),
                    ),
                  ),
                  const Text(
                    "Scan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
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
