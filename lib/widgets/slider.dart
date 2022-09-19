import 'package:flutter/material.dart';
import 'package:food_recpie_app/utils/colors.dart';
import 'package:food_recpie_app/utils/slider_utils.dart';

class SliderLabelWidget extends StatefulWidget {
  const SliderLabelWidget({Key? key}) : super(key: key);

  @override
  _SliderLabelWidgetState createState() => _SliderLabelWidgetState();
}

class _SliderLabelWidgetState extends State<SliderLabelWidget> {
  int indexTop = 0;
  double valueBottom = 20;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
        /// ticks in between
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSliderTopLabel(),
        ],
      ),
    );
  }

  Widget buildSliderTopLabel() {
    final labels = ['<10', '30', '>60'];
    const double min = 0;
    final double max = labels.length - 1.0;
    final divisions = labels.length - 1;

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Utils.modelBuilder(
              labels,
              (index, label) {
                const selectedColor = primaryColor;
                const unselectedColor = secondaryText;
                final isSelected = index <= indexTop;
                final color = isSelected ? selectedColor : unselectedColor;

                return buildLabel(
                    label: label as String, color: color, width: 50);
              },
            ),
          ),
        ),
        Slider(
          value: indexTop.toDouble(),
          min: min,
          max: max,
          divisions: divisions,
          activeColor: primaryColor,
          inactiveColor: formText,
          // label: labels[indexTop],
          onChanged: (value) => setState(() => indexTop = value.toInt()),
        ),
      ],
    );
  }

  Widget buildLabel({
    required String label,
    required double width,
    required Color color,
  }) =>
      SizedBox(
        width: width,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'InterBold',
            fontSize: 17,
          ).copyWith(color: color),
        ),
      );
}
