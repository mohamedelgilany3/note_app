import 'package:flutter/material.dart';
import 'package:my_first_note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title, //'Notes'
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
