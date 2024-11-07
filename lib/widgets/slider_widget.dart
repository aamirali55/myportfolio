import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final double size;
  final double width;
  const SliderWidget({super.key, required this.size, required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width, 
        child: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: const Color(0xFFFD6F00),
            inactiveTrackColor: Colors.grey,
            trackHeight: 2.0,
            thumbColor: Colors.white,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayColor: Colors.transparent,
          ),
          child: Slider(
            value: size, 
            min: 0,
            max: 100,
            onChanged: (value) {}, 
          ),
        ),
      ),
    );
  }
}
