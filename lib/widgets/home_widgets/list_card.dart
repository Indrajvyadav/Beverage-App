import 'package:beverage_app/main.dart';
import 'package:beverage_app/models/list_models.dart';
import 'package:beverage_app/screens/item_screen.dart';
import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListCard extends ConsumerWidget {
  const ListCard({super.key});

  void updateCart(BuildContext context, WidgetRef ref) {
    ref.read(cartProvider.notifier).state++;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: listModels.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemScreen(index),
                    ));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: grayBackground,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    height: 163,
                    width: 390,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 105),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: listModels[index].name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: grayTextColor,
                                        )),
                                    TextSpan(
                                        text:
                                            "\n\n${listModels[index].rating} ⭐ (${listModels[index].numberOfPurchases})",
                                        style: const TextStyle(
                                            color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                  listModels[index].description,
                                  style: const TextStyle(
                                      fontSize: 12, color: grayTextColor),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 110,
                            width: 110,
                            decoration: const BoxDecoration(
                                color: primaryTextColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7))),
                            child: Image.asset(
                              listModels[index].imagePath,
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 125,
                      right: 40,
                      child: InkWell(
                        onTap: () {
                          updateCart(context, ref);
                        },
                        child: Container(
                          width: 52,
                          height: 19,
                          decoration: const BoxDecoration(
                            color: corouselgreen,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: const Center(
                            child: Text(
                              'ADD',
                              style: TextStyle(
                                fontSize: 12,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                    top: 58,
                    left: 110,
                    child: Image.asset('assets/home/veg.png'),
                  )
                ]),
              ),
            );
          }),
    );
  }
}
