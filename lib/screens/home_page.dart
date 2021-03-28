import 'package:Cruise/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Cruise/screens/login.dart';
import 'package:Cruise/screens/service_centers.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int index = 1;

  List<Widget> _childern;

  SharedPreferences prefs;

  @override
  void initState() {
    _childern = [
      new MyHomePage(),
      new ServiceCenterPage()
    ];

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
    ScreenUtil(allowFontScaling: true, width: 360.0, height: 640.0)
      ..init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                ),
              ),
              backgroundColor: Colors.orangeAccent,
              title: Text(
                'Cruise',
                style: TextStyle(
                    fontFamily: 'Gilroy-ExtraBold',
                    fontSize: ScreenUtil.getInstance().setSp(20.0),
                    color: Colors.white),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Login();
                        }));
                      },
                      child: Text('Login')
                  ),
                )
              ],
            ),
            body: _childern[index],
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            floatingActionButton: SizedBox(
              width: ScreenUtil.getInstance().setHeight(40.0),
              height: ScreenUtil.getInstance().setHeight(40.0),
              child: FloatingActionButton(
                backgroundColor: Colors.orangeAccent,
                child: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
            bottomNavigationBar: new BottomNavigationBar(
                currentIndex: index,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: Colors.blue,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.home,
                        color: Colors.orange,
                      ),
                      icon: Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Home',
                        style: TextStyle(color: Colors.black38),
                      )),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.people,
                        color: Colors.orange,
                      ),
                      icon: Icon(
                        Icons.people,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Referral',
                        style: TextStyle(color: Colors.black38),
                      )),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Me',
                        style: TextStyle(color: Colors.black38),
                      )),
                  BottomNavigationBarItem(
                      activeIcon: Icon(
                        Icons.help,
                        color: Colors.orange,
                      ),
                      icon: Icon(
                        Icons.help,
                        color: Colors.grey,
                      ),
                      title: new Text(
                        'Help',
                        style: TextStyle(color: Colors.black38),
                      )),
                ],
                onTap: (int index) async {
                  setState(() {
                    this.index = index;
                  });
                })),
      ),
    );
  }
}