import 'package:bmi_calculator_ostad/core/contants.dart';
import 'package:flutter/material.dart';

import '../../../../core/gender.dart';
import 'gender_card.dart';

class GenderSelectionRow extends StatefulWidget {
  final Gender selectedGender;
  final Function(Gender) onSelectGender;

  const GenderSelectionRow(
      {Key? key, required this.selectedGender, required this.onSelectGender})
      : super(key: key);

  @override
  State<GenderSelectionRow> createState() => _GenderSelectionRowState();
}

class _GenderSelectionRowState extends State<GenderSelectionRow> {
  late Gender selectedGender = widget.selectedGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GenderCard(
              gender: Gender.male,
              color: selectedGender == Gender.male
                  ? kActiveCardColour
                  : kInactiveCardColour,
              onTap: (gender) {
                setState(() {
                  selectedGender = gender;
                });
                widget.onSelectGender(gender);
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: GenderCard(
              gender: Gender.female,
              color: selectedGender == Gender.female
                  ? kActiveCardColour
                  : kInactiveCardColour,
              onTap: (gender) {
                setState(() {
                  selectedGender = gender;
                });
                widget.onSelectGender(gender);
              },
            ),
          ),
        ],
      ),
    );
  }
}
