import 'dart:ui';

import 'package:beverage_app/main.dart';
import 'package:beverage_app/models/beverage_model.dart';
import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Carousel extends ConsumerStatefulWidget {
  const Carousel({super.key});
  @override
  ConsumerState<Carousel> createState() => _CarouselState();
}

class _CarouselState extends ConsumerState<Carousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();

    _pageController =
        PageController(viewportFraction: 0.55, initialPage: initialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void updateCart(BuildContext context, WidgetRef ref) {
    ref.read(cartProvider.notifier).state++;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 502,
      height: 355,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 1,
            sigmaY: 1,
          ),
          child: Container(
            color: const Color.fromRGBO(49, 49, 49, 0.45),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 150, top: 10, bottom: 10),
                  child: Text(
                    'Most Populer Beverages',
                    style: TextStyle(fontSize: 18, color: grayTextColor),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    itemCount: beverages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(12)),
                                height: 265,
                                width: 213,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        beverages[index].imagePath,
                                        height: 130,
                                        width: 130,
                                      ),
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: beverages[index].name,
                                            style: const TextStyle(
                                                fontSize: 22,
                                                color: grayTextColor),
                                          ),
                                          const TextSpan(
                                            text:
                                                '\nEspresso, Steamed Milk\n\n',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: corouselBlack),
                                          ),
                                          TextSpan(
                                            text:
                                                "${beverages[index].rating} ⭐ (${beverages[index].numberOfPurchases})",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 200,
                                right: 20,
                                child: InkWell(
                                  onTap: () {
                                    updateCart(context, ref);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    color: corouselgreen,
                                    child: const Center(
                                      child: Icon(
                                        Icons.add_rounded,
                                        color: primaryTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
