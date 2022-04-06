import 'package:flutter/material.dart';
import 'package:news/constants.dart';
import 'package:news/models/Blog.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/main/components/recent_post.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/search.dart';
import 'components/sidebar_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 2,
            child: Column(
              children: List.generate(
                  blogPosts.length,
                  (index) => BlogPostCard(
                        blog: blogPosts[index],
                      )),
            )),
        if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
        //SİDEBAR
        if (!Responsive.isMobile(context))
          Expanded(
            child: Column(
              children: [
                Search(),
                SizedBox(height: kDefaultPadding),
                Categories(),
                SizedBox(height: kDefaultPadding),
                RecentPost()
              ],
            ),
          ),
      ],
    );
  }
}

class RecentPost extends StatelessWidget {
  const RecentPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sidebar_container(
        title: "Recent Post",
        child: Column(
          children: [
            RecentPostCard(
              image: "assets/images/recent_1.png",
              title: "Our Secret Formula  to Online Workshops",
              press: () {},
            ),
            SizedBox(height: kDefaultPadding),
            RecentPostCard(
              image: "assets/images/recent_2.png",
              title: "Digital Product Innovations from Warsaw with Love",
              press: () {},
            ),
          ],
        ));
  }
}
