import 'dart:ui';

import 'package:beverage_app/main.dart';
import 'package:beverage_app/screens/home_screen.dart';
import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});
  void onSubmit(value, WidgetRef ref) {
    ref.read(nameProvider.notifier).update(
          (state) => value,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void handleTapInputOutside(PointerDownEvent e) {
      // widget.options.onTextFieldTap!();
      debugPrint("tap outside do nothing?");
      FocusScope.of(context).unfocus();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(35, 34, 37, 1),
                Color.fromRGBO(68, 51, 43, 1),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'assets/login/bg1.png', // Make sure the image path is correct
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Image.asset(
            'assets/login/bg2.png',
          )),
          Positioned.fill(
              child: Image.asset(
            'assets/login/texture.png',
            fit: BoxFit.cover,
          )),
          // Positioned.fill(child: Image.asset('assets/login/rect.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                    alignment: Alignment.center, color: grayBackground),
              ),
            ),
          ),
          // Overlaying the Login Form
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // App Icon/Logo
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/login/logo.png'), // App logo
                  ),

                  // App Name
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Swift\n',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(fontSize: 64),
                        ),
                      ),
                      TextSpan(
                          text: '\t\t\tCafé',
                          style: GoogleFonts.raleway(
                            fontSize: 40,
                          ))
                    ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Tagline
                  Text(
                    '"Latte but never late"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color.fromRGBO(171, 171, 171, 1),
                        shadows: [
                          const Shadow(
                            blurRadius: 20,
                            color: primaryTextColor,
                          )
                        ]),
                  ),
                  const SizedBox(height: 30),
                  // Username Field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: TextField(
                      onTapOutside: (event) {
                        handleTapInputOutside(event);
                      },
                      onSubmitted: (value) => onSubmit(value, ref),
                      decoration: const InputDecoration(
                          hintText: 'User Name',
                          hintStyle:
                              TextStyle(fontSize: 14, color: primaryTextColor)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Password Field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: TextField(
                      onTapOutside: (event) {
                        handleTapInputOutside(event);
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(fontSize: 14, color: primaryTextColor)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Login Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    child: Container(
                      height: 49,
                      width: 245,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: -2,
                                blurRadius: 15,
                                color: Color.fromRGBO(0, 0, 0, 1))
                          ],
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(77, 43, 26, 1),
                            Color.fromRGBO(167, 116, 90, 1)
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(33))),
                      child: const Center(
                        child: Text(
                          'Login',
                          style:
                              TextStyle(fontSize: 20, color: primaryTextColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Signup Button
                  TextButton(
                    onPressed: () {
                      // Handle signup
                    },
                    style: TextButton.styleFrom(
                      fixedSize: const Size(245, 49),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: primaryTextColor),
                        borderRadius: BorderRadius.circular(33),
                      ),
                    ),
                    child: const Text(
                      'Signup',
                      style: TextStyle(color: primaryTextColor, fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Privacy Policy Link
                  TextButton(
                    onPressed: () {
                      // Navigate to privacy policy
                    },
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(color: primaryTextColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
