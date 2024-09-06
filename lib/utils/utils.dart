import 'package:flutter/material.dart';

const Color primaryTextColor = Colors.white;

const Color itemColor1 = Color.fromRGBO(205, 205, 205, 1);
const Color itemColor2 = Color.fromRGBO(196, 196, 196, 1);
const Color itemColor3 = Color.fromRGBO(146, 146, 146, 1);

const Color bottomBarColor = Color.fromRGBO(51, 51, 51, 0.84);

const Color grayTextColor = Color.fromRGBO(182, 182, 182, 1);

Color grayBackground = Colors.grey.withOpacity(0.4);

const Color corouselBlack = Color.fromRGBO(48, 48, 48, 1);

const Color corouselgreen = Color.fromRGBO(102, 162, 92, 1);

int day = DateTime.now().day;
int month = DateTime.now().month;
int year = DateTime.now().year;

final List<Widget> bottomList = [
  Image.asset('assets/bottom_nav/home.png'),
  Image.asset('assets/bottom_nav/contact.png'),
  Image.asset('assets/bottom_nav/wallet.png'),
  Image.asset('assets/bottom_nav/cart.png'),
  Image.asset('assets/bottom_nav/msg.png')
];
