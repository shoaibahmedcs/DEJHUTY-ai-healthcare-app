import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/initial_pic.png'),
      ),
    );
  }
}
