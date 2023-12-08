import 'package:flutter/material.dart';
import 'package:kekaya/Utility/utility_export.dart';

Widget commonStructure({
  required BuildContext context,
  required Widget child,
  PreferredSize? appBar,
  Color? bgColor,
  Widget? bottomNavigation,
}) {
  ///Pass null in appbar when it's optional ex = appBar : null
  return Stack(
    children: [
      Scaffold(
        backgroundColor: bgColor ?? white,
        resizeToAvoidBottomInset: true,
        appBar: appBar,
        bottomNavigationBar: bottomNavigation,
        ///adding listView cause scroll issue
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
          child: child,
        ),
      ),
    ],
  );
}
