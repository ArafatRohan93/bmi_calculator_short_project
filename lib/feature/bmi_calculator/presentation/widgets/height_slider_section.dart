import 'package:bmi_calculator_ostad/core/contants.dart';
import 'package:bmi_calculator_ostad/core/text_styles.dart';
import 'package:bmi_calculator_ostad/feature/bmi_calculator/presentation/widgets/rounded_card.dart';
import 'package:flutter/material.dart';

class HeightSliderSection extends StatefulWidget {
  final double height;
  final Function(double) onChangeHeight;

  const HeightSliderSection(
      {Key? key, required this.height, required this.onChangeHeight})
      : super(key: key);

  @override
  State<HeightSliderSection> createState() => _HeightSliderSectionState();
}

class _HeightSliderSectionState extends State<HeightSliderSection> {
  late double height = widget.height;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      color: kActiveCardColour,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'HEIGHT',
              style: AppTextStyle.kLabelTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  height.toStringAsFixed(2),
                  style: AppTextStyle.kValueTextStyle,
                ),
                Text(
                  'cm',
                  style: AppTextStyle.kLabelTextStyle,
                ),
              ],
            ),
            SliderTheme(
              data: kHeightSliderTheme(context),
              child: Slider(
                value: height / 200,
                onChanged: (value) {
                  setState(
                    () {
                      height = value * 200;
                    },
                  );
                  widget.onChangeHeight(height);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
