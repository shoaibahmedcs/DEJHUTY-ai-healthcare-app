import 'package:flutter/material.dart';
import 'package:getx_mvvm/view/sign_up/setup_your_community_ally_profile.dart';
import 'package:getx_mvvm/view/widgets/reusable_button.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.01),
              const Text(
                'Phone Verification',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              const Text(
                'Enter 6 digit OTP Code',
                style: TextStyle(
                  color: Color(0xff7b7b7b),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              PinCodeTextField(
                pinBoxHeight: 50,
                pinBoxWidth: 50,
                pinBoxRadius: 10,
                pinBoxColor: const Color(0xff175232),
                pinBoxBorderWidth: 1,
                pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.005),
                defaultBorderColor: const Color(0xff175232),
                hasTextBorderColor: const Color(0xff7b7b7b),
                maxLength: 6,
                hasError: false,
                pinTextStyle: const TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 20,
                ),
                keyboardType: TextInputType.number, // Ensure number keyboard appears
                onTextChanged: (text) {
                  setState(() {

                  });
                },
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive code? ',
                    style: TextStyle(
                      color: Color(0xff7b7b7b),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend again',
                      style: TextStyle(
                        color: Color(0xff175232),
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              // SizedBox(height: screenHeight * 0.02),
              Image.asset('assets/images/verification.png'),
              ReusableButton(
                title: 'Verify',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SetupYourCommunityAllyProfileScreen()));
                },
              ),
              SizedBox(
                height: screenHeight * 0.02,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
