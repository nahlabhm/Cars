import 'package:car/screens/home.dart';
import 'package:car/screens/payement.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';


class Navbar extends StatefulWidget {
  const Navbar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Navbar> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Navbar> with SingleTickerProviderStateMixin {
 int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
       
        activeIcons: const [
          Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
          Icon(Icons.favorite, color: Color.fromARGB(255, 0, 0, 0)),

          Icon(Icons.location_on, color: Color.fromARGB(255, 0, 0, 0)),
          Icon(Icons.notifications, color: Color.fromARGB(255, 0, 0, 0)),
                    Icon(Icons.person, color: Color.fromARGB(255, 0, 0, 0)),

        ],
       inactiveIcons: const [
  Icon(Icons.home),
  Icon(Icons.favorite),
  Icon(Icons.location_on),
  Icon(Icons.notifications),
  Icon(Icons.person),
],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: const Color.fromARGB(255, 2, 2, 2),
        elevation: 10,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
           Home(),
        Pay(),
        Home(),
                Home(),
        Home(),


        ],
      ),
    );
  }
}