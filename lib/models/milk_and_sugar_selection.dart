import 'package:flutter/material.dart';

class MilkAndSugarSelection extends StatefulWidget {
  const MilkAndSugarSelection({super.key});

  @override
  MilkAndSugarSelectionState createState() => MilkAndSugarSelectionState();
}

class MilkAndSugarSelectionState extends State<MilkAndSugarSelection> {
  // Milk options
  List<String> milkOptions = [
    'Skim Milk',
    'Almond Milk',
    'Soy Milk',
    'Lactose Free Milk',
    'Full Cream Milk',
    'Oat Milk'
  ];

  // Selected milk options
  List<String> selectedMilkOptions = [];

  // Sugar options
  List<String> sugarOptions = ['Sugar X1', 'Sugar X2', '½ Sugar', 'No Sugar'];

  // Selected sugar options
  List<String> selectedSugarOptions = [];

  // Toggle selection for milk
  void _onMilkSelected(String option) {
    setState(() {
      if (selectedMilkOptions.contains(option)) {
        selectedMilkOptions.remove(option);
      } else {
        selectedMilkOptions.add(option);
      }
    });
  }

  // Toggle selection for sugar
  void _onSugarSelected(String option) {
    setState(() {
      if (selectedSugarOptions.contains(option)) {
        selectedSugarOptions.remove(option);
      } else {
        selectedSugarOptions.add(option);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Milk and Sugar Selection')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choice of Milk",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: milkOptions.map((option) {
                return ChoiceChip(
                  label: Text(option),
                  selected: selectedMilkOptions.contains(option),
                  onSelected: (bool selected) {
                    _onMilkSelected(option);
                  },
                  selectedColor: Colors.green,
                  backgroundColor: Colors.grey[300],
                  labelStyle: TextStyle(
                    color: selectedMilkOptions.contains(option)
                        ? Colors.white
                        : Colors.black,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20), // Add spacing between sections
            const Text(
              "Choice of Sugar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: sugarOptions.map((option) {
                return ChoiceChip(
                  label: Text(option),
                  selected: selectedSugarOptions.contains(option),
                  onSelected: (bool selected) {
                    _onSugarSelected(option);
                  },
                  selectedColor: Colors.green,
                  backgroundColor: Colors.grey[300],
                  labelStyle: TextStyle(
                    color: selectedSugarOptions.contains(option)
                        ? Colors.white
                        : Colors.black,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
