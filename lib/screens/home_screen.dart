import 'dart:ui';

import 'package:beverage_app/main.dart';
import 'package:beverage_app/utils/utils.dart';
import 'package:beverage_app/widgets/home_widgets/bottom_nav.dart';
import 'package:beverage_app/widgets/home_widgets/carousel.dart';
import 'package:beverage_app/widgets/home_widgets/data_search.dart';
import 'package:beverage_app/widgets/home_widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final cartCount = ref.watch(cartProvider);

    final name = ref.watch(nameProvider);

    void handleTapInputOutside(PointerDownEvent e) {
      // widget.options.onTextFieldTap!();
      debugPrint("tap outside do nothing?");
      FocusScope.of(context).unfocus();
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
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

        // Positioned.fill(child: Image.asset('assets/login/rect.png')),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              alignment: Alignment.center,
              color: grayBackground,
            ),
          ),
        ),
        Positioned.fill(
            child: Image.asset(
          'assets/login/texture.png',
          fit: BoxFit.cover,
        )),
        SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 55,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/home/wave.png',
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$day/$month/$year",
                            style: const TextStyle(
                                color: grayTextColor, fontSize: 13)),
                        TextSpan(
                            text: '\n$name',
                            style: const TextStyle(
                                fontSize: 18, color: grayTextColor))
                      ]),
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: grayTextColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/home/cart.png',
                              height: 24,
                            ),
                          ),
                          if (cartCount > 0)
                            Positioned(
                              left: 22,
                              top: 22,
                              child: CircleAvatar(
                                radius: 8.5,
                                backgroundColor: corouselBlack,
                                child: Text(
                                  '$cartCount',
                                  style: const TextStyle(
                                      color: primaryTextColor, fontSize: 12),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/home/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  onTapOutside: (event) {
                    handleTapInputOutside(event);
                  },
                  onTap: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: grayTextColor,
                      ),
                      suffixIcon: Icon(
                        Icons.tune,
                        color: grayTextColor,
                      ),
                      filled: true,
                      fillColor: primaryTextColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryTextColor,
                        ),
                      ),
                      hintStyle: TextStyle(fontSize: 12, color: grayTextColor),
                      hintText: 'Search favorite Beverages'),
                ),
              ),
              const Carousel(),
              const Padding(
                padding: EdgeInsets.only(right: 220, top: 10),
                child: Text(
                  'Get it instantly',
                  style: TextStyle(fontSize: 18, color: grayTextColor),
                ),
              ),
              const ListCard()
            ],
          ),
        ),
        const Positioned(
          top: 740,
          left: 26,
          child: BottomNav(),
        )
      ]),
    );
  }
}
