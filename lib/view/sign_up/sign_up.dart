import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/sign_up/phone_verification.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Variables to track the selected option
  bool isCommunityAllySelected = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Back',
            style: TextStyle(
              color: Color(0xff4EB57D),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xff4EB57D),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Choose Account Type',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isCommunityAllySelected = true;
                            });
                          },
                          child: Stack(
                            clipBehavior: Clip.none, // Allow the tick to overflow
                            children: [
                              Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  color: isCommunityAllySelected
                                      ? const Color(0xff175232)
                                      : const Color(0xff07301A), // Change color based on selection
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Community Ally',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Image.asset(
                                        'assets/images/community_ally.png',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (isCommunityAllySelected)
                                Positioned(
                                  right: -10,
                                  bottom: -10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff3A9864),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.05),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isCommunityAllySelected = false;
                            });
                          },
                          child: Stack(
                            clipBehavior: Clip.none, // Allow the tick to overflow
                            children: [
                              Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  color: !isCommunityAllySelected
                                      ? const Color(0xff175232)
                                      : const Color(0xff07301A), // Change color based on selection
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Community Member',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/community_member.png',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (!isCommunityAllySelected)
                                Positioned(
                                  right: -10,
                                  bottom: -10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff3A9864),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'First Name',
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
                    hintText: 'Last Name',
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
                    hintText: 'User Name',
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
                    hintText: 'Email',
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
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Color(0xff7b7b7b),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Re-enter Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Color(0xff7b7b7b),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                ReusableButton(
                  title: 'Sign Up',
                  onPressed: () {
                    // Get.toNamed('/phone_verification');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhoneVerificationScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
