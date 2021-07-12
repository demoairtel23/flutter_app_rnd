import 'package:flutter/material.dart';
import 'package:flutter_app_rnd/util/colors.dart';

class MyTextFormField2 extends StatelessWidget {
  // final Text title;
  var text = TextEditingController();

  /// you can add more fields that meet your needs

  MyTextFormField2({Key key, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 50.0, right: 10.0, left: 10.0, bottom: 10.0), child: TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      controller: text,
      style: TextStyle(color: AppColors.white),
      // initialValue: 'Input text',
      decoration: InputDecoration(
        // labelText: 'Label text',
        prefixIcon: Icon(Icons.person, color: AppColors.white),
        // errorText: 'Error message',
        /*suffixIcon: Icon(
          Icons.error, color: AppColors.white,
        ),*/
      ),
    ),);
  }
}