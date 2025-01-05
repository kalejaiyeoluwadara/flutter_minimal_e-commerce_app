import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData? icon;
  final String text;
  final void Function()? onTap;
  const MyListTile({super.key, this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(text),
        onTap: onTap,
      ),
    );
  }
}
