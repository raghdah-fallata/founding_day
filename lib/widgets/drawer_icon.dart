import 'package:flutter/material.dart';
import 'package:founding_day/constants/styles.dart' as styles;

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset('images/menu.png', color: styles.eggShell),
      onPressed: () => Scaffold.of(context).openDrawer(),
      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
    );
  }
}
