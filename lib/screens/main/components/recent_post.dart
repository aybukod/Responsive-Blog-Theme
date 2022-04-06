import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;

  const RecentPostCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            Expanded(flex: 2, child: Image.asset(image)),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
                flex: 5,
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: "Raleway",
                    color: kDarkBlackColor,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
