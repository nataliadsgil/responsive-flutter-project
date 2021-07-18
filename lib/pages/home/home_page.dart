import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';
import 'package:responsive/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsive/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:responsive/pages/home/widgets/sections/advantages_section.dart';
import 'package:responsive/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: constrains.maxWidth < mobileBreakpoint
                ? PreferredSize(
                    preferredSize: Size(double.infinity, 56),
                    child: MobileAppBar())
                : PreferredSize(
                    preferredSize: Size(double.infinity, 72),
                    child: WebAppBar()),
            drawer: constrains.maxWidth < mobileBreakpoint ? Drawer() : null,
            body: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1400),
                  child: ListView(
                    children: [
                      TopSection(),
                      AdvantagesSection(),
                    ],
                  )),
            ));
      },
    );
  }
}
