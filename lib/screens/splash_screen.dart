import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:Cruise/screens/home_page.dart';

class Splashscreen extends StatefulWidget {
  @override
  SplashScreenstate createState() {
    return SplashScreenstate();
  }
}

class SplashScreenstate extends State<Splashscreen> {
  String route = "";

  @override
  initState() {
    super.initState();
    this.getLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage()
      },
      home: Scaffold(
          body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: route,
        backgroundColor: Colors.white,
        loaderColor: Colors.orange,
        loadingText: new Text(
          'Cruise',
          style: new TextStyle(fontFamily: 'Gilroy-ExtraBold', fontSize: 32.0),
        ),
      )),
    );
  }

  getLoginStatus() async {
    try {
      setState(() {
        route = '/home';
      });
    } catch (e) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      } else {
        SystemNavigator.pop();
      }
    }
  }
}
