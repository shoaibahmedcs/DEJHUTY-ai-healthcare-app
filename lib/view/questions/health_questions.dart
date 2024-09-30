import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/questions/interview_questions.dart';
import 'package:getx_mvvm/view/widgets/bottom_navigator.dart';

class HealthQuestionsScreen extends StatefulWidget {
  const HealthQuestionsScreen({super.key});

  @override
  _HealthQuestionsScreenState createState() => _HealthQuestionsScreenState();
}

class _HealthQuestionsScreenState extends State<HealthQuestionsScreen> {
  final List<String> healthRisks = [
    'Have dizzy spells',
    'High Cholesterol',
    'Have Dizzy spells',
    'Bone of joint problems',
    'Hear Problems',
    'Currently Pregnant',
    'Have dizzy Spells',
    'Diabetes or Thyroid Condition',
    'Prior Heart Attack or Stroke',
    'Arthritis',
    'Asthma or Lung Problem',
    'High Blood Pressure',
    'Spine or disc problem',
    'Surgery in the past 6 months',
    'Diabetes or Thyroid Condition',
  ];

  final Map<String, bool> selectedRisks = {};

  @override
  void initState() {
    super.initState();
    for (var risk in healthRisks) {
      selectedRisks[risk] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 40),
              SizedBox(height: screenHeight * 0.02),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Health Questions',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 25,
                  ),
                ),
              ),
              // const SizedBox(height: 10),
              SizedBox(height: screenHeight * 0.01),
              const Text(
                'Please check any of the following health risks you currently have now or have had in the past.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  // color: Color(0xff7b7b7b),
                  fontSize: 16,
                ),
              ),
              // const SizedBox(height: 20),
              SizedBox(height: screenHeight * 0.01),
              // Wrap the entire content in a SingleChildScrollView
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: healthRisks.map((risk) {
                          return Column(
                            children: [
                              CheckboxListTile(
                                title: Text(
                                  risk,
                                  style: const TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 16,
                                  ),
                                ),
                                value: selectedRisks[risk],
                                checkboxShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                onChanged: (bool? value) {
                                  setState(() {
                                    selectedRisks[risk] = value ?? false;
                                  });
                                },
                              ),
                              SizedBox(height: screenHeight * 0.01),
                            ],
                          );
                        }).toList(),
                      ),
                      const FittedBox(
                        child: Text(
                          'Do you have any family history of the above conditions?',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextFormField(
                        maxLines: 2,
                        decoration: InputDecoration(
                          hintText: 'If yes, explain:',
                          hintStyle: const TextStyle(
                            color: Color(0xff7b7b7b),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              BottomNavigator(
                onPressedForward: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //   builder: (context) => const InterviewQuestionsScreen(),));
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (context, animation, secondaryAnimation) => const InterviewQuestionsScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
