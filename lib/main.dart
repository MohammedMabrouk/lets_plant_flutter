import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lets_plant_flutter/screens/reminders/RemindersListScreen.dart';
import 'package:lets_plant_flutter/AppColors.dart';
import '../../common/CommonWidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          height: 70,
          indicatorColor: Colors.transparent,
          // Remove default selection indicator
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(
                  color: AppColors.green_2); // Selected text color
            }
            return const TextStyle(
                color: AppColors.gray_3); // Unselected text color
          }),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  List<String> titleList = ['Reminders', 'My Plants', 'Discover', 'Settings'];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green_1,
        title: ScreenTitle(title: titleList[currentPageIndex]),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.calendar,
              color: AppColors.green_2,
            ),
            icon: FaIcon(
              FontAwesomeIcons.calendar,
              color: AppColors.gray_3,
            ),
            label: 'Reminders',
          ),
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.leaf,
              color: AppColors.green_2,
            ),
            icon: FaIcon(
              FontAwesomeIcons.leaf,
              color: AppColors.gray_3,
            ),
            label: 'My Plants',
          ),
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.earthAmericas,
              color: AppColors.green_2,
            ),
            icon: FaIcon(
              FontAwesomeIcons.earthAmericas,
              color: AppColors.gray_3,
            ),
            label: 'Discover',
          ),
          NavigationDestination(
            selectedIcon: FaIcon(
              FontAwesomeIcons.gear,
              color: AppColors.green_2,
            ),
            icon: FaIcon(
              FontAwesomeIcons.gear,
              color: AppColors.gray_3,
            ),
            label: 'Settings',
          ),
        ],
      ),
      body: <Widget>[
        /// Reminders
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Reminders',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// My Plants
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'My Plants',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Discover
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Discover',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Settings
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Settings',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}

// todo: basics
/*
* app bar (done)
* column
* container
* elevated button
* flutter logo
* icon
* image
* placeholder
* row
* */

/*
* Screens
* welcome
* - login
* - register
* - onboarding
* - language
*
* home
* - reminders
* - my plants
* - discover
*
* settings
*
* */
