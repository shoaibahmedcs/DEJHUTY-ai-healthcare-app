import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xff3A9864),
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text('Profile',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ),
      ],
    );
  }
}