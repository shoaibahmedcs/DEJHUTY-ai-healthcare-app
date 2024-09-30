import 'package:flutter/material.dart';
class ReusableButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ReusableButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xff3A9864),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
