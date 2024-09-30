import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Image.asset('assets/images/splash.png',
          height: 100,
          width: 100,
          ),
          const SizedBox(height: 10),
          Text('Sign in'),
          const SizedBox(height: 40),
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
          const SizedBox(height: 20),
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
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text('Forgot Password ? ',
            style: TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          const SizedBox(height: 40),
          ReusableButton(title: 'Sign In', onPressed: (){}),
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 40),
                  height: 1,
                  color: Color(0xff7b7b7b),
                ),
              ),
              const SizedBox(width: 10),
              Text('OR',
              style: TextStyle(
                color: Color(0xff7b7b7b),),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 40),
                  height: 1,
                  color: Color(0xff7b7b7b),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
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
          const SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                Text('Don\'t have an account ? ',
                style: TextStyle(
                  color: Color(0xff7b7b7b),
                ),
                ),
                Text('Sign Up',
                style: TextStyle(
                  color: Color(0xff175232),
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          )

        ],
      ),
      ),
    );
  }
}
