import 'package:bmi_calculator_ostad/core/gender.dart';
import 'package:bmi_calculator_ostad/core/text_styles.dart';
import 'package:bmi_calculator_ostad/feature/bmi_calculator/presentation/widgets/rounded_card.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final Gender gender;
  final Color color;
  final Function(Gender) onTap;

  const GenderCard(
      {Key? key,
      required this.gender,
      required this.onTap,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(gender);
      },
      child: RoundedCard(
        color: color,
        child: Column(
          children: [
            Icon(
              gender == Gender.male ? Icons.male : Icons.female,
              size: 80,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              gender == Gender.male ? 'Male' : 'Female',
              style: AppTextStyle.kLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
