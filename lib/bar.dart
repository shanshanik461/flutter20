
import 'package:flutter/material.dart';
import 'package:flutter20/flipkrd.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;
  int unselectedInsex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      unselectedInsex = index;

    });
  }

  final List<Widget> _pages = [
    Flipkrd(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: _pages[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius:BorderRadius.circular(20) ,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,

          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_registration),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black87,
        ),
      ),
    );
  }
}