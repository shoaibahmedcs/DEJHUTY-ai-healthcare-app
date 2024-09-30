import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/questions/review_interview_questions.dart';
import 'package:getx_mvvm/view/widgets/bottom_navigator.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class InterviewQuestionsScreen extends StatelessWidget {
  const InterviewQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // The scrollable content
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                  vertical: screenHeight * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Interview Questions',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const AddQuestion(
                      qNo: 1,
                      question:
                      'What significant event(s) do you have coming up in the next six months? i.e., birthday, anniversary, family get-together.',
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Enter your answer here',
                        hintStyle: const TextStyle(
                          color: Color(0xff7b7b7b),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const AddQuestion(
                      qNo: 2,
                      question:
                      'Rate the top challenges that might get in the way of you reaching your goals.',
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff3A9864),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text('Select Goals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),

                      ),
                    ),
                    const SelectGoals(),
                    const SizedBox(height: 10),
                    const AddQuestion(
                      qNo: 3,
                      question: 'How many of each do you eat per day?',
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Meals:',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: const TextStyle(
                          color: Color(0xff7b7b7b),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sodas:',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: const TextStyle(
                          color: Color(0xff7b7b7b),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Snacks:',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: const TextStyle(
                          color: Color(0xff7b7b7b),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'On Average, how many meals do you eat out weekly?:',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                        hintStyle: const TextStyle(
                          color: Color(0xff7b7b7b),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const AddQuestion(
                      qNo: 4,
                      question: 'What are your top goals?',
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff3A9864),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text('Select Goals',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),

                      ),
                    ),
                    const SelectGoals(),
                    const SizedBox(height: 10),
                    const AddQuestion(
                      qNo: 5,
                      question:
                      'When was the last time you were in the best shape of your life?',
                    ),
                    const SizedBox(height: 20),
                    const QuestionFiveOptions(
                      title: 'Exercise Knowledge',
                    ),
                    const SizedBox(height: 20),
                    const QuestionFiveOptions(
                      title: 'Form and Technique',
                    ),
                    const SizedBox(height: 20),
                    const QuestionFiveOptions(
                      title: 'Self Discipline',
                    ),
                    const SizedBox(height: 20),
                    ReusableButton(
                      title: 'Submit',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const ReviewInterviewQuestionsScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            // The fixed bottom navigation
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: BottomNavigator(
                onPressedForward: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const ReviewInterviewQuestionsScreen(),
                  //   ),
                  // );

                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 300),
                      pageBuilder: (context, animation, secondaryAnimation) => ReviewInterviewQuestionsScreen(),
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
          ],
        ),
      ),
    );
  }
}

class AddQuestion extends StatelessWidget {
  final int qNo;
  final String question;

  const AddQuestion({super.key, required this.qNo, required this.question});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.only(top: 2, right: 5),
            height: 30,
            decoration: const BoxDecoration(
              color: Color(0xff3A9864),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Text(
              'Q.$qNo ',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(width: widthScreen * 0.05),
        Expanded(
          flex: 6,
          child: Text(question),
        ),
      ],
    );
  }
}

class SelectGoals extends StatefulWidget {
  const SelectGoals({super.key});

  @override
  State<SelectGoals> createState() => _SelectGoalsState();
}

class _SelectGoalsState extends State<SelectGoals> {
  final List<String> healthRisks = [
    'Have dizzy spells',
    'High Cholesterol',
    'Bone or joint problems',
    'Heart Problems',
    'Currently Pregnant',
    'Diabetes or Thyroid Condition',
    'Prior Heart Attack or Stroke',
    'Arthritis',
    'Asthma or Lung Problem',
    'High Blood Pressure',
    'Spine or disc problem',
    'Surgery in the past 6 months',
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
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight * 0.3,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff3A9864),
          width: 2,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
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
    );
  }
}

class QuestionFiveOptions extends StatefulWidget {
  final String title;
  const QuestionFiveOptions({super.key, required this.title});

  @override
  State<QuestionFiveOptions> createState() => _QuestionFiveOptionsState();
}

class _QuestionFiveOptionsState extends State<QuestionFiveOptions> {
  int selectedNumber = -1; // State to track the selected number

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '${widget.title}:',
            style: const TextStyle(
              color: Color(0xff000000),
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 25, // Define height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedNumber = index; // Set the selected number
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                  width: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selectedNumber == index
                        ? const Color(0xff3a9864) // Green if selected
                        : Colors.transparent, // Transparent otherwise
                    border: Border.all(
                      color: const Color(0xff000000),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      color: selectedNumber == index
                          ? Colors.white // White text if selected
                          : const Color(0xff3a9864), // Green text otherwise
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: 'Observation:',
            hintStyle: const TextStyle(
              color: Color(0xff7b7b7b),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        )
      ],
    );
  }
}
