import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Image.asset(
        'assets/images/xtream_logo.png',
        fit: BoxFit.contain,
        height: 32,
    ),
    Container(
    padding: const EdgeInsets.all(8.0), child: title)
    ],),
      // iconTheme: IconThemeData(color: Theme.of(context).primaryColor, size: 50.0),
      backgroundColor: Theme.of(context).backgroundColor,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}