import "package:flutter/material.dart";
import "package:flutter_advanced_drawer/flutter_advanced_drawer.dart";
import "package:okbaffordables/utils.dart";

class AllProjects extends StatefulWidget {
  const AllProjects({super.key});

  @override
  State<StatefulWidget> createState() {
    return AllProjectsState();
  }
}

class AllProjectsState extends State<AllProjects> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: OKBColors.secColor,
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animateChildDecoration: true,
        rtlOpening: false,
        openScale: 0.85,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        drawer: SafeArea(
            child: ListTileTheme(
                textColor: Colors.white,
                iconColor: Colors.white,
                child: Column(mainAxisSize: MainAxisSize.max, children: [
                  const SizedBox(height: 40),
                  CircleAvatar(
                      backgroundColor: OKBColors.mainColor,
                      radius: 65,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 60,
                          child: Image.asset('assets/images/splashLogo.jpg',
                              fit: BoxFit.fitWidth, width: 90))),
                  const SizedBox(height: 10),
                  ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.home),
                      title: const Text('Projects')),
                  ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.account_circle_rounded),
                      title: const Text('Dashboard')),
                  ListTile(
                      onTap: () {},
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings')),
                  const Spacer(),
                  DefaultTextStyle(
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white54),
                      child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 16.0),
                          child:
                              const Text('Terms of Service | Privacy Policy')))
                ]))),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: OKBColors.mainColor.withOpacity(0.5),
                elevation: 0,
                leading: IconButton(
                    onPressed: _handleMenuButtonPressed,
                    icon: ValueListenableBuilder<AdvancedDrawerValue>(
                        valueListenable: _advancedDrawerController,
                        builder: (_, value, __) {
                          return AnimatedSwitcher(
                              duration: const Duration(milliseconds: 250),
                              child: Icon(
                                  value.visible ? Icons.clear : Icons.menu,
                                  key: ValueKey<bool>(value.visible)));
                        })),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notification_add))
                ]),
            body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          Text("Buy your dream property easily",
                              style: OKBStyles.titleText),
                          const SizedBox(height: 20),
                          Row(children: [
                            Text("Our Projects", style: OKBStyles.boldText)
                          ])
                        ])))));
  }

  @override
  void initState() {
    super.initState();
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }
}
