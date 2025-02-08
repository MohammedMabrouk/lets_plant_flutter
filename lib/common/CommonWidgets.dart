import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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


class ReminderCard extends StatelessWidget {
  const ReminderCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 1,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            /// icon
            SvgPicture.asset(
              'assets/icons/watering.svg',
              height: 35,
              width: 35,
              colorFilter: ColorFilter.mode(AppColors.green_2,
                  BlendMode.srcIn), // Change color
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:

                /// reminder name
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.green_3,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),

            /// done button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.minPositive, 35),
                  backgroundColor: AppColors.green_2),
              child: const Text(
                'done',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              onPressed: () {
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}