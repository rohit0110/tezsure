import 'package:flutter/material.dart';
import 'package:tezsure/utils/constants.dart';

class DestructiveCard extends StatelessWidget {
  const DestructiveCard({
    Key? key,
    required this.index,
    required this.bgPath,
    required this.heading,
    required this.subheading,
  }) : super(key: key);
  final int index;
  final String bgPath;
  final String heading, subheading;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultPadding / 2),
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
          image: DecorationImage(
            image: AssetImage(bgPath),
            fit: BoxFit.fill,
          ),
        ),
        height: index == 2
            ? 100
            : index == 1
                ? 106
                : 112,
        width: index == 2
            ? MediaQuery.of(context).size.width - defaultPadding * 2 - 20
            : index == 1
                ? MediaQuery.of(context).size.width - defaultPadding * 2 - 10
                : MediaQuery.of(context).size.width - defaultPadding * 2,
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 2,
          horizontal: defaultPadding,
        ),
        margin: const EdgeInsets.all(defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    subheading,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            if (index == 0)
              const SizedBox(
                width: 10,
              ),
            if (index == 1 || index == 2)
              const Image(
                image: AssetImage("assets/images/tezos.png"),
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
          ],
        ),
      ),
    );
  }
}
