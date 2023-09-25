import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: const Color(0xff6750A4),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(FontAwesomeIcons.locationPin),
      ),
      title: const Text("San Franciso, CA"),
      automaticallyImplyLeading: true,
      // flexibleSpace: Flexible(),
      actions: [
        IconButton(
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 238, 223, 253),
            ),
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.bell))
      ],
    );
  }
}

class ProfileScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileScreenAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [TextButton(onPressed: () {}, child: const Text("Logout"))],
      title: const Text("Profile"),
    );
  }
}

class TaskScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TaskScreenAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: const TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            text: "Scheduled",
          ),
          Tab(
            text: "Completed",
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.listCheck,
              color: Color(0xff6750A4),
            ))
      ],
      title: const Text("Task"),
    );
  }
}
