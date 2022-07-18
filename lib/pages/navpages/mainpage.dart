import 'package:flutter/material.dart';
import 'package:travelapp/pages/navpages/bar_item_page.dart';
import 'package:travelapp/pages/navpages/home_page.dart';
import 'package:travelapp/pages/navpages/my_page.dart';
import 'package:travelapp/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),

  ];

int currentIndex=0;

  void onTap(int index)
  {
   setState((){
     currentIndex=index;
   }
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize:0,
        selectedFontSize: 0,
        onTap: onTap,
        currentIndex:currentIndex,
        selectedItemColor: Colors.black54,
unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation:0,
        items: [
BottomNavigationBarItem(
    label:'Home',
    icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
label:'Bar',
              icon: Icon(Icons.stacked_bar_chart_sharp)),
          BottomNavigationBarItem(
label:'Search',
              icon: Icon(Icons.search))
         , BottomNavigationBarItem(
label:'My',
              icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
