import 'package:flutter/material.dart';

import '../Category/Categorypage.dart';
import '../HomePage/homePage.dart';
import '../InfoPage/InfoPage.dart';
import '../LocationPage/LocationPage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    pageController.jumpToPage(value);
  }
  // List pages  = [
  //   HomePage(),
  //   CategoryPage(),
  //   HomePage(),
  //   HomePage(),

  // ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                  // offset: const Offset(0, 0.1),
                ),
              ],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)

              ),            ),
            margin: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)
              
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "game",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                          Icons.home_outlined,
                          // color: Colors.grey,
                        )),
                    //label: '',
                  ),
                  BottomNavigationBarItem(
                    label: "profile",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child:
                        const Icon(
                          Icons.grid_view,
                          // color: Colors.grey,
                        ))
                    ,
                    //label: '',
                  ),
                  BottomNavigationBarItem(
                    label: "search",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                          Icons.add_location_outlined,
                          // color: Colors.grey,
                        )),
                  ),
                  BottomNavigationBarItem(
                    label: "feed",
                    icon: Container(
                      //padding: const EdgeInsets.all(7),
                        child: const Icon(
                          Icons.info_outline,
                          // color: Colors.grey,
                        )),
                  ),

                ],
                // currentIndex: _selectedIndex,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: _onTappedBar,
                selectedFontSize: 12,
                unselectedFontSize: 12,
                type: BottomNavigationBarType.fixed,
              ),
            ),
          ),
        ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          HomePage(),
          CategoryPage(),
          LocationPage(),
          InfoPage(),
        ],
      ),
    );
  }
}
