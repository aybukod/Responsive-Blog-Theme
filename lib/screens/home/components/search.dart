import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/screens/home/components/sidebar_container.dart';

import '../../../constants.dart';

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sidebar_container(
      title: "Search",
      child: TextField(
        //why ?
        onChanged: (Value) {},
        decoration: InputDecoration(
            hintText: "Type here...",
            suffixIcon: Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: SvgPicture.asset("assets/icons/feather_search.svg"),
            ),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(kDefaultPadding / 2)),
                borderSide: BorderSide(color: Color(0xFFCCCCCC)))),
      ),
    );
  }
}
