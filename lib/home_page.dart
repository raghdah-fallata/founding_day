import 'package:flutter/material.dart';
import 'package:founding_day/constants/strings.dart' as strings;
import 'package:founding_day/constants/styles.dart' as styles;
import 'package:founding_day/widgets/animated_content.dart';
import 'package:founding_day/widgets/app_drawer.dart';
import 'package:founding_day/widgets/drawer_icon.dart';
import 'package:founding_day/widgets/nav_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    return Scaffold(
      backgroundColor: styles.raisinBlack,
      appBar: AppBar(
        backgroundColor: styles.jet,
        leading: !isDesktop
            ? Builder(builder: (BuildContext context) {
                return const DrawerIcon();
              })
            : null,
        title: Padding(
          padding: const EdgeInsets.only(left: 100, right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isDesktop
                  ? Row(
                      children: const [
                        NavItem(text: strings.contactUs),
                        NavItem(text: strings.downloadId),
                        NavItem(text: strings.ourStory),
                      ],
                    )
                  : Container(),
              Image.asset(
                'images/title.webp',
                height: 70,
                color: styles.eggShell,
              ),
            ],
          ),
        ),
        toolbarHeight: 120,
      ),
      drawer: !isDesktop ? const AppDrawer() : null,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/pattern1.webp',
                      width: 129,
                      height:
                          isDesktop ? screenHeight * 0.84 : screenHeight * 1.46,
                      color: styles.eggShell.withOpacity(0.2),
                      repeat: ImageRepeat.repeatY,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(strings.title, style: styles.titleStyle),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  strings.body,
                                  textDirection: TextDirection.rtl,
                                  style: styles.regularTextStyle,
                                ),
                              ),
                              Text(strings.conclusion,
                                  style: styles.regularTextStyle),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, bottom: 50),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: styles.vanDyke,
                                      shape: const BeveledRectangleBorder(),
                                      fixedSize: const Size(160, 45)),
                                  child: Text(strings.downloadId,
                                      style: styles.regularTextStyle),
                                ),
                              ),
                            ],
                          ),
                        ),
                        !isDesktop
                            ? const Padding(
                                padding: EdgeInsets.only(left: 50, top: 100),
                                child: SizedBox(
                                    width: 420,
                                    height: 290,
                                    child: AnimatedContent()),
                              )
                            : Container()
                      ],
                    ),
                    isDesktop
                        ? const SizedBox(
                            width: 630, height: 600, child: AnimatedContent())
                        : Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
