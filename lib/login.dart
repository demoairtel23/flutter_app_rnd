import 'package:flutter/material.dart';
import 'package:flutter_app_rnd/reusable_widgets.dart';
import 'package:flutter_app_rnd/util/colors.dart';
import 'package:flutter_app_rnd/util/constants.dart';
import 'package:flutter_app_rnd/views/base_app_bar.dart';

// final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
// final SnackBar snackBar = const SnackBar(content: Text("Not Validated"));

class LoginActivity extends StatefulWidget {
  @override
  _LoginActivity createState() {
    return new _LoginActivity();
  }
}

class _LoginActivity extends State<LoginActivity> {
  // LAppBarWidget({Key? key}) : super(key: key);

  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: AppConstants.scaffoldKey,
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Padding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Image(
                    image: AssetImage('assets/images/xtream_logo.png'),
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Xstream Fiber',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          color: Colors.white,
                          fontStyle: FontStyle.normal),
                    )),
                // ReusableWidgets.getInputTextLayout("Xstream Fiber", context),
                // ReusableWidgets.getInputTextLayout2(_text, context),
                Padding(
                  padding: EdgeInsets.only(
                      top: 50.0, right: 10.0, left: 10.0, bottom: 10.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: _text,
                    style: TextStyle(color: AppColors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: AppColors.white),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  onPressed: () {
                    setState(() {
                      _text.text.isEmpty ? _validate = true : _validate = false;
                    });
                    // if(!_validate)
                    _displaySnackBar(context);
                  },
                  child: Text('Continue'),
                )
              ],
            ),
            padding: EdgeInsets.only(
                bottom: 10.0, left: 10.0, right: 10.0, top: 50.0)),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
    // AppConstants.scaffoldKey.currentState.showSnackBar(snackBar);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
