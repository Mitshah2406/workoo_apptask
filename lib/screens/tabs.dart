import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:workoo_apptask/providers/home_provider.dart';
import 'package:workoo_apptask/screens/home_screen.dart';
import 'package:workoo_apptask/screens/profile_screen.dart';
import 'package:workoo_apptask/screens/task_screen.dart';
import 'package:workoo_apptask/widgets/custom_appbars.dart';

class Tabs extends ConsumerWidget {
  Tabs({super.key});
  final List<Widget> screens = [
    const HomeScreen(),
    const TasksScreen(),
    const HomeScreen(),
    const ProfileScreen()
  ];
  final List<PreferredSizeWidget> appBars = [
    const HomeAppBar(),
    const TaskScreenAppBar(),
    const HomeAppBar(),
    const ProfileScreenAppBar()
  ];
  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(bottomNavIndexProvider);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBars[index],
        body: screens[index],
        bottomNavigationBar: GNav(
          color: const Color.fromARGB(255, 96, 94, 101),
          activeColor: const Color(0xff6750A4),
          tabMargin: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          tabBackgroundColor: const Color.fromARGB(255, 221, 209, 253),
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 26,
          ),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          gap: 4,
          style: GnavStyle.oldSchool,
          curve: Curves.linear,
          textSize: 12,
          tabs: [
            GButton(
              icon: FontAwesomeIcons.house,
              text: "Home",
              onPressed: () =>
                  ref.read(bottomNavIndexProvider.notifier).state = 0,
            ),
            GButton(
              icon: FontAwesomeIcons.image,
              text: "Task",
              onPressed: () =>
                  ref.read(bottomNavIndexProvider.notifier).state = 1,
            ),
            GButton(
              icon: FontAwesomeIcons.heart,
              text: "My Tasker",
              onPressed: () =>
                  ref.read(bottomNavIndexProvider.notifier).state = 2,
            ),
            GButton(
              onPressed: () =>
                  ref.read(bottomNavIndexProvider.notifier).state = 3,
              icon: FontAwesomeIcons.user,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
