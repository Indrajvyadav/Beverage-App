import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String _dropDownValue = '1';

  var items = ['1', '2', '3', '4'];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(217, 217, 217, 1),
      height: 27,
      width: 53,
      child: Center(
        child: DropdownButton(
          dropdownColor: const Color.fromRGBO(217, 217, 217, 1),
          underline: Container(),
          style: const TextStyle(fontSize: 15, color: itemColor3),
          icon: const Icon(
            color: itemColor3,
            Icons.keyboard_arrow_down_sharp,
            size: 30,
          ),
          items: items.map((String item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _dropDownValue = newValue!;
            });
          },
          value: _dropDownValue,
        ),
      ),
    );
  }
}
