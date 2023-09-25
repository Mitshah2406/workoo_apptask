import 'package:flutter/material.dart';

class ProfileItemTile extends StatelessWidget {
  const ProfileItemTile(
      {super.key, required this.title, required this.trailing});
  final String title;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
      ),
      trailing: trailing,
    );
  }
}
