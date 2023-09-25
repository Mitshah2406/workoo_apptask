import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workoo_apptask/widgets/profile_item_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          const CircleAvatar(
            radius: 60,
            foregroundImage: AssetImage("assets/images/john_doe.jpeg"),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Brooklyn Simmons",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const ProfileItemTile(
            title: "Account",
            trailing: Text(
              "mitshah2406@gmail.com",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
          ),
          const Divider(),
          const ProfileItemTile(
              title: "Change Password",
              trailing: Icon(
                FontAwesomeIcons.angleRight,
                color: Color(0xff6750A4),
              )),
          const Divider(),
          const ProfileItemTile(
              title: "Change Password",
              trailing: Icon(
                FontAwesomeIcons.angleRight,
                color: Color(0xff6750A4),
              )),
          const Divider(),
          const ProfileItemTile(
              title: "Change Password",
              trailing: Icon(
                FontAwesomeIcons.angleRight,
                color: Color(0xff6750A4),
              )),
          const Divider(),
          const ProfileItemTile(
              title: "Change Password",
              trailing: Icon(
                FontAwesomeIcons.angleRight,
                color: Color(0xff6750A4),
              )),
          const Divider(),
          const ProfileItemTile(
              title: "Change Password",
              trailing: Icon(
                FontAwesomeIcons.angleRight,
                color: Color(0xff6750A4),
              )),
          const Divider(),
          TextButton.icon(
            onPressed: () {},
            label: const Text("  Buy a gift card"),
            icon: const Icon(FontAwesomeIcons.creditCard),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Become a tasker"),
          ),
        ],
      ),
    );
  }
}
