import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/sign_up/phone_verification.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool _isPasswordVisible = false;
  bool _isRePasswordVisible = false;

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
                  alignment: Alignment.center,
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                    ),
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
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    // suffixIcon: Icon(
                    //   // Icons.visibility_off_outlined,
                    //   _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    //   color: Color(0xff7b7b7b),
                    // ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xff7b7b7b),
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextField(
                  obscureText: !_isRePasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Re-enter Password',
                    hintStyle: const TextStyle(
                      color: Color(0xff7b7b7b),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    // suffixIcon: const Icon(
                    //   Icons.visibility_off_outlined,
                    //   color: Color(0xff7b7b7b),
                    // ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isRePasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xff7b7b7b),
                      ),
                      onPressed: () {
                        setState(() {
                          _isRePasswordVisible = !_isRePasswordVisible;
                        });
                      },
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
                RichText(
                  text: const TextSpan(
                    text: 'By continuing, you agreeing to our ',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'terms and conditions',
                        style: TextStyle(
                          color: Color(0xff3A9864),
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: ' and our privacy policies',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 40),
                        height: 1,
                        color: const Color(0xff7b7b7b).withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'OR',
                      style: TextStyle(
                        color: Color(0xff7b7b7b),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        // fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 40),
                        height: 1,
                        color: const Color(0xff7b7b7b).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  // width: 300,
                  decoration: BoxDecoration(
                    // color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: const Color(0xff7b7b7b),
                    ),
                  ),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png',
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      const Text('Continue with Google',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 22,
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
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
