import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news/controllers/MenuController.dart';

import '../../../constants.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: kDarkBlackColor,
            child: Obx(
              () => ListView(
                children: [
                  DrawerHeader(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 3.5),
                    child: SvgPicture.asset("assets/icons/logo.svg"),
                  )),
                  ...List.generate(
                      _controller.menuItems.length,
                      (index) => DrawerItem(
                          title: _controller.menuItems[index],
                          isActive: index == _controller.selectedIndex,
                          press: () {
                            _controller.setMenuIndex(index);
                          }))
                ],
              ),
            )));
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;
  const DrawerItem({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
