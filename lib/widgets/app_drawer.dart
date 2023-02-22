import 'package:flutter/material.dart';
import '../constants/strings.dart' as strings;
import '../constants/styles.dart' as styles;

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: styles.jet,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: const BoxDecoration(
              color: styles.jet,
            ),
            child: Image.asset(
      'images/title.webp',
      height: 70,
      color: styles.eggShell,
    ),
          ),
          ListTile(
            minVerticalPadding: 20,
            title: Align(
              alignment: Alignment.center,
              child: Text(strings.ourStory, style: styles.regularTextStyle,),
            ),
            onTap: () {
            },
          ),
          ListTile(
            minVerticalPadding: 20,
            title: Align(
              alignment: Alignment.center,
              child: Text(strings.downloadId, style: styles.regularTextStyle),
            ),
            onTap: () {
            },
          ),
          ListTile(
            minVerticalPadding: 20,
            title: Align(
              alignment: Alignment.center,
              child: Text(strings.contactUs, style: styles.regularTextStyle),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
