import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  // Function to handle taps on the bottom navigation items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 340,
      decoration: BoxDecoration(
        color: bottomBarColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavBarItem('assets/bottom_nav/home.png',
              0), // Replace with your custom image asset
          _buildNavBarItem('assets/bottom_nav/contact.png',
              1), // Replace with your custom image asset
          _buildNavBarItem('assets/bottom_nav/wallet.png',
              2), // Replace with your custom image asset
          _buildNavBarItem('assets/bottom_nav/cart.png',
              3), // Replace with your custom image asset
          _buildNavBarItem('assets/bottom_nav/msg.png',
              4), // Replace with your custom image asset
        ],
      ),
    );
  }

  // Function to build individual navigation item with custom image
  Widget _buildNavBarItem(String iconPath, int index) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _selectedIndex == index
              ? const Color.fromRGBO(45, 45, 45, 1)
              : Colors.transparent,
        ),
        child: Image.asset(
          iconPath,
          color: _selectedIndex == index ? primaryTextColor : primaryTextColor,
          height: 30, // Adjust size as needed
          width: 30, // Adjust size as needed
        ),
      ),
    );
  }
}
