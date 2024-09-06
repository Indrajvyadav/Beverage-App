import 'package:beverage_app/utils/utils.dart';
import 'package:flutter/material.dart';

class Choice extends StatefulWidget {
  const Choice({super.key});

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  String _selectedOption = "Full";

  void _selectOption(String option) {
    setState(() {
      _selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSelectableButton("Full"),
        const SizedBox(width: 10),
        _buildSelectableButton("1/2 Full"),
        const SizedBox(width: 10),
        _buildSelectableButton("3/4 Full"),
        const SizedBox(width: 10),
        _buildSelectableButton("1/4 Full"),
      ],
    );
  }

  Widget _buildSelectableButton(String option) {
    return GestureDetector(
      onTap: () {
        _selectOption(option);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 32,
        width: 59,
        decoration: BoxDecoration(
          color: _selectedOption == option
              ? Colors.green
              : const Color.fromRGBO(217, 217, 217, 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            option,
            style: TextStyle(
                color:
                    _selectedOption == option ? primaryTextColor : Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
