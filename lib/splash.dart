import 'package:flutter/material.dart';
import 'package:flutter_app_rnd/home.dart';
import 'package:flutter_app_rnd/login.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final SnackBar snackBar = const SnackBar(content: Text("Notification Clicked"));

class Splash extends StatefulWidget {
  @override
  // _Splash1State createState() => _Splash1State();
  _Splash2State createState() => _Splash2State();
}

class _Splash1State extends State<Splash> with SingleTickerProviderStateMixin {
  Animation<double> animation;

  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    final CurvedAnimation curve =
    CurvedAnimation(parent: controller, curve: Curves.ease);
    animation = Tween(begin: 1.0, end: 0.2).animate(curve);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        {

          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainActivity()),
          );
          // controller.reverse();
        }
      else if (status == AnimationStatus.dismissed) controller.forward();
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).accentColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FadeTransition(
          opacity: animation,
          child: FlutterLogo(),
        ));
  }
}

class _Splash2State extends State<Splash> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    final CurvedAnimation curve =
    CurvedAnimation(parent: controller, curve: Curves.ease);
    animation = Tween(begin: 1.0, end: 0.2).animate(curve);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        {

          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginActivity()),
          );
          // controller.reverse();
        }
      else if (status == AnimationStatus.dismissed) controller.forward();
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FadeTransition(
          opacity: animation,
          child: Padding(padding: const EdgeInsets.all(100.0), child: Image.asset('assets/images/xtream_logo.png'),),
        ));
  }
}
