import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../notifiers/menu_notifier.dart';
import 'custom_list_tile.dart';
import 'menu_model.dart';

class CustomSideDrawer extends StatefulWidget {
  @override
  _CustomSideDrawerState createState() => _CustomSideDrawerState();
}

late int currentSelectedIndex;

class _CustomSideDrawerState extends State<CustomSideDrawer> {
  @override
  void initState() {
    MenuDrawerNotifier menuDrawerNotifier =
    Provider.of<MenuDrawerNotifier>(context, listen: false);
    currentSelectedIndex = menuDrawerNotifier.getCurrentDrawer;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var drawer = Provider.of<MenuDrawerNotifier>(context, listen: false);

    return Container(
      width: 250,
      color: Colors.blue,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CustomListTile(
            onTap: () {
              switch (index) {
                case 0:
                  drawer.setCurrentDrawer(0);
                  Navigator.popAndPushNamed(context, "home");
                  break;

                case 1:
                  drawer.setCurrentDrawer(1);
                  Navigator.popAndPushNamed(context, "signup");
                  break;

                case 2:
                  drawer.setCurrentDrawer(2);
                  Navigator.popAndPushNamed(context, "login");
                  break;

                case 3:
                  drawer.setCurrentDrawer(4);
                  Navigator.popAndPushNamed(context, "adminlogin");
                  break;




              }
            },
            title: navigationItems[index].title,
            isSelected: currentSelectedIndex == index,
            icon: navigationItems[index].icon,
          );
        },
        itemCount: navigationItems.length,
      ),
    );
  }
}