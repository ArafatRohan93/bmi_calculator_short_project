import 'package:bmi_calculator_ostad/core/gender.dart';
import 'package:bmi_calculator_ostad/feature/bmi_calculator/presentation/widgets/gender_selection_row.dart';
import 'package:bmi_calculator_ostad/feature/bmi_calculator/presentation/widgets/height_slider_section.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender selectedGender = Gender.male;
  double heightInCm = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          GenderSelectionRow(
            selectedGender: selectedGender,
            onSelectGender: (gender) {
              selectedGender = gender;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          HeightSliderSection(
            height: heightInCm,
            onChangeHeight: (value) {
              heightInCm = value;
            },
          )
        ],
      ),
    );
  }
}
