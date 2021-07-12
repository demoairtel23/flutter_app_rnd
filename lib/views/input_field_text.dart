import 'package:flutter/material.dart';
import 'package:flutter_app_rnd/util/colors.dart';
import 'package:flutter_app_rnd/util/strings.dart';

class MyTextFormField extends StatelessWidget {
  final Text title;

  /// you can add more fields that meet your needs

  const MyTextFormField({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: <Widget>[
          TextFormField(
            autofocus: true,
            textAlign: TextAlign.start,
            style: TextStyle(color: AppColors.primaryColorLight),
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xff0E9447), width: 2.0),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xff0E9447), width: 2.0),
              ),
              labelText: AppStrings.email,
              alignLabelWithHint: true,
              hintStyle: TextStyle(color: AppColors.primaryColorLight),
            ),
          ),
          (_controller.text == "")
              ? Text(
                  // AppStrings.email,
                  "",
                  style: TextStyle(color: Colors.white
                      // Style it according to your requirement / To make it look like hintText
                      ),
                )
              : Container(),
        ],
      ),
    );
  }
}
