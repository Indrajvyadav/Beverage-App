import 'dart:ui';

import 'package:beverage_app/models/list_models.dart';
import 'package:beverage_app/utils/utils.dart';
import 'package:beverage_app/widgets/item_screen_widgets/bottom_submit_bar.dart';
import 'package:beverage_app/widgets/item_screen_widgets/choice.dart';
import 'package:beverage_app/widgets/item_screen_widgets/drop_down_widget.dart';
import 'package:beverage_app/widgets/item_screen_widgets/milk_choice.dart';
import 'package:beverage_app/widgets/item_screen_widgets/sugar_choice.dart';
import 'package:flutter/material.dart';

class ItemDetailWidget extends StatefulWidget {
  final int index;
  const ItemDetailWidget({super.key, required this.index});

  @override
  State<ItemDetailWidget> createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  String back1 = "assets/item/bg1.png";
  String back2 = "assets/item/bg2.png";
  ClipRRect cr1 = ClipRRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        alignment: Alignment.center,
        color: grayBackground,
      ),
    ),
  );
  ClipRRect cr2 = ClipRRect(
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
      child: Container(
        alignment: Alignment.center,
      ),
    ),
  );
  bool isSwitched = false;
  void onSwitch() {
    setState(() {
      if (back1 == "assets/item/bg1.png") {
        back1 = back2;
        cr1 = cr2;
      } else {
        back1 = "assets/item/bg1.png";
        cr1 = ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              alignment: Alignment.center,
              color: grayBackground,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.antiAlias,
      width: size.width,
      height: (size.height + 110) - (size.height / (2.5)),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Stack(
        children: [
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
              back1, // Make sure the image path is correct
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Image.asset(
            'assets/login/bg2.png',
          )),
          Positioned.fill(child: Image.asset('assets/login/rect.png')),
          cr1,
          Positioned.fill(
              child: Image.asset(
            'assets/login/texture.png',
            fit: BoxFit.cover,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, right: 26),
                          child: Text(
                            listModels[widget.index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: itemColor1,
                            ),
                          ),
                        ),
                        Text(
                          "${listModels[widget.index].rating}  ⭐ (${listModels[widget.index].numberOfPurchases})",
                          style:
                              const TextStyle(fontSize: 12, color: itemColor2),
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: DropDownWidget(),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  listModels[widget.index].description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 10, color: itemColor2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 195),
                  child: Text(
                    'Choice of Cup Filling',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: itemColor1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 65),
                  child: Choice(),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 240),
                  child: Text(
                    'Choice of Milk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: itemColor1,
                    ),
                  ),
                ),
                const MilkChoice(),
                const Padding(
                  padding: EdgeInsets.only(right: 220, bottom: 5),
                  child: Text(
                    'Choice of Sugar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: itemColor1,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: SugarChoice(),
                )
              ],
            ),
          ),
          const Positioned(
            top: 530,
            left: 10,
            child: BottomSubmitBar(),
          ),
          Positioned(
              top: 19,
              right: 80,
              child: IconButton(
                icon: const Icon(
                  Icons.dark_mode_rounded,
                  color: itemColor1,
                ),
                onPressed: () {
                  onSwitch();
                },
              ))
        ],
      ),
    );
  }
}
