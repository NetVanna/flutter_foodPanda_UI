import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text_button.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.mainColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Image.asset(
                        "assets/images/email_icon.png",
                        width: 80,
                      ),
                    ),
                    Text(
                      "Verify your email address to get started",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "This help us to mitigate fraud and keep your personal data safe",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Column(
                children: [
                  Divider(
                    height: 40,
                    color: Colors.grey[200],
                  ),
                  CustomTextButton(
                    text: "Send verify email",
                    onPressed: () {},
                    isDisable: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
