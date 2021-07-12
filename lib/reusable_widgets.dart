
import 'package:flutter/material.dart';
import 'package:flutter_app_rnd/views/base_app_bar.dart';
import 'package:flutter_app_rnd/views/input_field_text.dart';
import 'package:flutter_app_rnd/views/input_field_text2.dart';

// final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final SnackBar snackBar = const SnackBar(content: Text("Refresh Clicked"));

class ReusableWidgets {
  static getAppBar(String title, BuildContext context) {
    return BaseAppBar(title: Text(title),
      appBar: AppBar(),
      widgets: <Widget>[IconButton(icon: Icon(Icons.refresh), tooltip: "Show Snackbar", onPressed: (){ScaffoldMessenger.of(context).showSnackBar(snackBar);},),Padding(padding: const EdgeInsets.all(5.0)), Icon(Icons.more_vert), Padding(padding: const EdgeInsets.all(5.0))],
    );
  }

  static getInputTextLayout(String title, BuildContext context) {
    return MyTextFormField(title: Text(title),
    );
  }

  static getInputTextLayout2(TextEditingController title, BuildContext context) {
    return MyTextFormField2(text: title,);
  }
}