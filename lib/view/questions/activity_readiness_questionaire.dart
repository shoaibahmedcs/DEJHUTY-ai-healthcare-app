import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/questions/health_questions.dart';
// import 'package:getx_mvvm/view/questions/activity_readiness_questionare_more.dart';
import 'package:getx_mvvm/view/widgets/bottom_navigator.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class ActivityReadinessQuestionaireScreen extends StatelessWidget {
  const ActivityReadinessQuestionaireScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02
                ),
                  child: Column(
                    children: [
                      SizedBox(height: screenHeight * 0.02),
                      const Text('Activity Readiness Questionaire',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                      ),
                      ),
                      // const SizedBox(height: 10),
                      SizedBox(height: screenHeight * 0.01),

                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Date',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),
                          suffixIcon: const Icon(
                            Icons.calendar_today_rounded,
                            color: Color(0xff7b7b7b),
                          )
                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),

                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Home Phone',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Address',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'State',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'City',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Zip Code',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Sex',
                            hintStyle: const TextStyle(
                              color: Color(0xff7b7b7b),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),

                            ),
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xff7b7b7b),
                            )
                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Age',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),

                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Height',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Current Weight',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Goal Weight',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Current Body Fat',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),

                          ),

                        ),
                      ),
                      // const SizedBox(height: 20),
                      SizedBox(height: screenHeight * 0.02),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Goal Body Fat',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:
              screenWidth * 0.05,
              ),
              child: BottomNavigator(
                onPressedForward: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => const ActivityReadinessQuestionaireMoreScreen()
                  //     ));
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (context, animation, secondaryAnimation) => const HealthQuestionsScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0); // Start from right
                        const end = Offset(0.0, 0.0); // End at the original position
                        const curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );


                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            )
          ],
        ),
      ),
    );
  }
}