import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';

class MilkChoice extends StatefulWidget {
  const MilkChoice({super.key});

  @override
  State<MilkChoice> createState() => _MilkChoiceState();
}

class _MilkChoiceState extends State<MilkChoice> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = true;
  bool f = false;

  List<String> milkOptions1 = [
    'Skim Milk',
    'Almond Milk',
    'Soy Milk',
    'Lactose Free\nMilk'
  ];

  List<String> milkOptions2 = ['Full Cream Milk', 'Oat Milk'];

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  //  origin: Offset.zero,
                  scale: 0.4,
                  alignment: Alignment.topCenter,
                  child: Switch(
                    activeTrackColor: corouselgreen,
                    trackOutlineWidth: const WidgetStatePropertyAll(0),
                    inactiveThumbColor: itemColor1,
                    inactiveTrackColor: grayTextColor,
                    value: a,
                    onChanged: (value) {
                      setState(() {
                        a = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    milkOptions1[0],
                    style: const TextStyle(fontSize: 14, color: itemColor3),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 0.4,
                  alignment: Alignment.topCenter,
                  child: Switch(
                    activeTrackColor: corouselgreen,
                    trackOutlineWidth: const WidgetStatePropertyAll(0),
                    inactiveThumbColor: itemColor1,
                    inactiveTrackColor: grayTextColor,
                    value: b,
                    onChanged: (value) {
                      setState(() {
                        b = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    milkOptions1[1],
                    style: const TextStyle(fontSize: 14, color: itemColor3),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 0.4,
                  alignment: Alignment.topCenter,
                  child: Switch(
                    activeTrackColor: corouselgreen,
                    trackOutlineWidth: const WidgetStatePropertyAll(0),
                    inactiveThumbColor: itemColor1,
                    inactiveTrackColor: grayTextColor,
                    value: c,
                    onChanged: (value) {
                      setState(() {
                        c = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    milkOptions1[2],
                    style: const TextStyle(fontSize: 14, color: itemColor3),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 0.4,
                  alignment: Alignment.topCenter,
                  child: Switch(
                    activeTrackColor: corouselgreen,
                    trackOutlineWidth: const WidgetStatePropertyAll(0),
                    inactiveThumbColor: itemColor1,
                    inactiveTrackColor: grayTextColor,
                    value: d,
                    onChanged: (value) {
                      setState(() {
                        d = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    milkOptions1[3],
                    style: const TextStyle(fontSize: 14, color: itemColor3),
                  ),
                )
              ],
            ),
          ],
        ),

        ///                                              ////
        Padding(
            padding: const EdgeInsets.only(
              right: 30,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 125),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 0.4,
                        alignment: Alignment.topCenter,
                        child: Switch(
                          activeTrackColor: corouselgreen,
                          trackOutlineWidth: const WidgetStatePropertyAll(0),
                          inactiveThumbColor: itemColor1,
                          inactiveTrackColor: grayTextColor,
                          value: e,
                          onChanged: (value) {
                            setState(() {
                              e = value;
                            });
                          },
                        ),
                      ),
                      Text(
                        milkOptions2[0],
                        style: const TextStyle(fontSize: 14, color: itemColor3),
                      )
                    ],
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.scale(
                            scale: 0.4,
                            alignment: Alignment.topCenter,
                            child: Switch(
                                activeTrackColor: corouselgreen,
                                trackOutlineWidth:
                                    const WidgetStatePropertyAll(0),
                                inactiveThumbColor: itemColor1,
                                inactiveTrackColor: grayTextColor,
                                value: f,
                                onChanged: (value) {
                                  setState(() {
                                    f = value;
                                  });
                                })),
                        Text(
                          milkOptions2[1],
                          style:
                              const TextStyle(fontSize: 14, color: itemColor3),
                        )
                      ])
                ],
              ),
            ))
      ]),
    );
  }
}
