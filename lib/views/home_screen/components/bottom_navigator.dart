import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigatorState();
  }
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/learn-off.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/learn-on.png',
            height: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/person-off.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/person-on.png',
            height: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/shield-off.png',
            color: Colors.grey,
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/shield-on.png',
            height: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/shop-off.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/shop-on.png',
            height: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/explore-off.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/explore-on.png',
            height: 40,
          ),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: (index) => setState(() {
        _selectedIndex = index;
      }),
    );
  }
}
