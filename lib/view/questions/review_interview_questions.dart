import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/home_screens/home.dart';
import 'package:getx_mvvm/view/widgets/bottom_navigator.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class ReviewInterviewQuestionsScreen extends StatelessWidget {
  const ReviewInterviewQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.02,
            horizontal: screenWidth * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 40),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                'Interview Questions',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                ),
              ),
              // const SizedBox(height: 20),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                'A Quick Look at your Values',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              ReusableButton(title: 'Submit', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }),
              // const SizedBox(height: 20),
              SizedBox(height: screenHeight * 0.02),
              BottomNavigator(onPressedForward: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}