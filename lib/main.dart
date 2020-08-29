import 'package:flutter/material.dart';
import 'package:lyfline/screen/HistoryPage.dart';
import 'package:lyfline/screen/HomePage.dart';
import 'package:lyfline/screen/ProfilePage.dart';
import 'package:lyfline/screen/SettingPage.dart';
import 'package:lyfline/screen/routes.dart';
import 'package:lyfline/screen/videopage.dart';

void main() {
  runApp((MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:  <String, WidgetBuilder>{
        Routes.homePage: (BuildContext context) => new HomePage(),
        Routes.historyPage: (BuildContext context) => new HistoryPage(),
        Routes.historyPage: (BuildContext context) => new Videoiconpage(),
        Routes.profilePage: (BuildContext context) => new ProfilePage(),
        Routes.settingPage: (BuildContext context) => new SettingPage(),
      },
      debugShowCheckedModeBanner: false,
      home: BaseClass(),
    );
  }
}

class BaseClass extends StatefulWidget
{
  BaseClassState createState()=> BaseClassState();
}

class BaseClassState extends State<BaseClass>
{
  int _selectedIndex = 0;
  List<Widget> _children = [
    HomePage(),
    HistoryPage(),
    Videoiconpage(),
    ProfilePage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: _children[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        //child: Icon(Icons.add),
          child: Container(
            //width: 60,
            //height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/video_icon.png'),
              ),
            ),
          ),
          onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Videoiconpage()));
            debugPrint("you clicked button");
          }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite_border,color: Colors.black,),
            icon: Icon(Icons.favorite),
            title: new Text(
              'Home',
              style: TextStyle(fontSize: 0.0),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite,color: Colors.red,),
            icon: Icon(Icons.favorite),
            title: new Text(
              'Home',
              style: TextStyle(fontSize: 0.0),
            ),
          ),
          /*BottomNavigationBarItem(


            activeIcon: Image(image: AssetImage('assets/video_icon.png'),),
            icon:Image(image: AssetImage('assets/video_icon.png'),),
            title: new Text(
              'Home',
              style: TextStyle(fontSize: 0.0),
            ),
          ),*/
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person,color: Colors.red,),
            icon: Icon(Icons.person),
            title: new Text(
              'Home',
              style: TextStyle(fontSize: 0.0),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings,color: Colors.red,),
            icon: Icon(Icons.settings),
            title: new Text('Home',
              style: TextStyle(fontSize: 0.0),
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int value) {
    switch (value ) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      default:
        break;
    }
    setState(() {
      _selectedIndex = value;
    });
  }
}

