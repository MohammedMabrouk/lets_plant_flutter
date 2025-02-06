import 'package:flutter/material.dart';
import 'package:lets_plant_flutter/AppColors.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: AppColors.green_3,
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
    );
  }
}