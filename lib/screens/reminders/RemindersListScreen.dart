import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lets_plant_flutter/AppColors.dart';
import '../../common/CommonWidgets.dart';

class RemindersListScreen extends StatefulWidget {
  const RemindersListScreen({super.key});

  @override
  State<RemindersListScreen> createState() => _RemindersListScreenState();
}

class _RemindersListScreenState extends State<RemindersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.green_1,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
            child:
            ListView.builder(
              itemCount: 50, // Number of items
              itemBuilder: (context, index) {
                return ReminderCard(title: "water plant: $index");
              },
            )
        ));
  }
}
