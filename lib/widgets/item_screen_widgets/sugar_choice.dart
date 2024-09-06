import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';

class SugarChoice extends StatefulWidget {
  const SugarChoice({super.key});

  @override
  State<SugarChoice> createState() => _SugarChoiceState();
}

class _SugarChoiceState extends State<SugarChoice> {
  bool a = false;
  bool b = false;
  bool c = true;
  bool d = false;

  List<String> sugOptions1 = ['Sugar X1', '½ Sugar'];

  List<String> sugOptions2 = ['Sugar X2', 'No Sugar'];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Transform.scale(
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
                    sugOptions1[0],
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
                Text(
                  sugOptions1[1],
                  style: const TextStyle(fontSize: 14, color: itemColor3),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
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
                      value: c,
                      onChanged: (value) {
                        setState(() {
                          c = value;
                        });
                      },
                    ),
                  ),
                  Text(
                    sugOptions2[0],
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
                      sugOptions2[1],
                      style: const TextStyle(fontSize: 14, color: itemColor3),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
