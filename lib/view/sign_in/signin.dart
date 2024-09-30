import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/home_screens/home.dart';
import 'package:getx_mvvm/view/sign_up/sign_up.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.02),
                Image.asset('assets/images/splash.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Sign in',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                ),
                ),
                SizedBox(height: screenHeight * 0.04),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(
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
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),

                    ),
                    suffixIcon: Icon(Icons.visibility_off_outlined,
                      color: Color(0xff7b7b7b),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                ReusableButton(title: 'Sign In', onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }),
                SizedBox(height: screenHeight * 0.05),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 40),
                        height: 1,
                        color: Color(0xff7b7b7b).withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
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
                        margin: EdgeInsets.only(right: 40),
                        height: 1,
                        color: Color(0xff7b7b7b).withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.04),
                Container(
                  // width: 300,
                  decoration: BoxDecoration(
                    // color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      color: Color(0xff7b7b7b),
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
                      Text('Continue with Google',
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
                Container(
                  child: Row(
                    children: [
                      Text('Don\'t have an account ? ',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          // Get.toNamed('/signup');
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                        },

                        child: Text('Sign Up',
                          style: TextStyle(
                            color: Color(0xff175232),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
              ],
            ),
          ),
        )
      ),
    );
  }
}
