import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';

class BottomSubmitBar extends StatefulWidget {
  const BottomSubmitBar({super.key});

  @override
  State<BottomSubmitBar> createState() => _BottomSubmitBarState();
}

class _BottomSubmitBarState extends State<BottomSubmitBar> {
  bool? isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 374,
      decoration: BoxDecoration(
        color: bottomBarColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Checkbox(
                activeColor: itemColor1,
                checkColor: corouselBlack,
                tristate: true,
                value: isSelected,
                onChanged: (value) => setState(() {
                      isSelected = value;
                    })),
            const Text(
              'High Priority',
              style: TextStyle(
                fontSize: 16,
                color: itemColor1,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Image.asset('assets/item/err.png'),
            Expanded(child: Container()),
            InkWell(
              onTap: () {},
              child: Container(
                height: 44,
                width: 146,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: -2,
                          blurRadius: 15,
                          color: Color.fromRGBO(0, 0, 0, 1))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7.5)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(33, 113, 53, 1),
                      Color.fromRGBO(43, 136, 66, 1),
                      Color.fromRGBO(54, 158, 80, 1)
                    ])),
                child: const Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 16, color: itemColor1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
