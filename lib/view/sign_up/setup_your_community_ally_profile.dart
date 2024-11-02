import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/questions/health_questions.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class SetupYourCommunityAllyProfileScreen extends StatelessWidget {
  const SetupYourCommunityAllyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric( horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(height: 40),
                SizedBox(height: screenHeight * 0.02),
                const Text('User Profile',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 18,
                  ),),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xff3A9864),
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(Icons.person,
                        color: Colors.white,
                        size: 90,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: const Color(0xff3A9864),
                              width: 1,
                            ),
                          ),
                          child: const Icon(Icons.camera_alt_outlined,
                            color: Color(0xff3A9864),
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
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
                    hintText: 'Country',
                    suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                      color: Color(0xff7b7b7b),
                    ),
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
                    suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                      color: Color(0xff7b7b7b),
                    ),
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
                    hintText: 'City',
                    hintStyle: const TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
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
                    hintText: 'Gender',
                    suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,
                      color: Color(0xff7b7b7b),
                    ),
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
                ReusableButton(title: 'Save', onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HealthQuestionsScreen()));
                }),
              ],
            ),
          ),
        )
      ),
    );
  }
}
