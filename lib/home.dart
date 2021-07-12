import 'package:flutter/material.dart';
import 'package:flutter_app_rnd/reusable_widgets.dart';

class MainActivity extends StatelessWidget {
  // LAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReusableWidgets.getAppBar("Xstream Fiber", context),
        body: Container());
  }

}