import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/questions/activity_readiness_questionaire.dart';
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
              children: [
                // const SizedBox(height: 40),
                SizedBox(height: screenHeight * 0.02),
                const Text('Setup Your Community Ally Profile',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 18,
                  ),),
                SizedBox(height: screenHeight * 0.01),
                Image.asset('assets/images/splash.png',
                  height: 100,
                  width: 100,
                  //   height: screenHeight * 0.2,
                ),
                // const SizedBox(height: 10),
                SizedBox(height: screenHeight * 0.01),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Official Name',
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
                    hintText: 'Profession',
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
                    hintText: 'Current Organization',
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
                    hintText: 'Work Place',
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff3A9864),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Upload License Document',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        // Spacer(),
                        Icon(Icons.file_upload_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                // const SizedBox(height: 20),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Write a Description',
                    hintStyle: const TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                // const SizedBox(height: 20),
                SizedBox(height: screenHeight * 0.02),
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
                    hintText: 'Experience Year',
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
                    hintText: 'Clinic Address',
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
                // const SizedBox(height: 40),
                SizedBox(height: screenHeight * 0.03),
                ReusableButton(title: 'Next', onPressed: (){
                  // Get.toNamed('/setup_your_community_ally_more_details');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ActivityReadinessQuestionaireScreen()));
                }),
              ],
            ),
          ),
        )
      ),
    );
  }
}
