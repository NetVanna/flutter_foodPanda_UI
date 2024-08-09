import 'package:flutter/material.dart';
import 'package:food_panda/constants/colors.dart';
import 'package:food_panda/widgets/custom_text_button.dart';
import 'package:food_panda/widgets/custome_text_filed.dart';

import 'login_with_email_screen.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  TextEditingController emailController = TextEditingController();
  String emailText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.mainColor,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Continue",
              style: TextStyle(
                  color: emailText.isEmpty
                      ? Colors.grey[400]
                      : AppColors.mainColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 20),
                    child: Image.asset(
                      "assets/images/email_icon.png",
                      width: 60,
                    ),
                  ),
                  Text(
                    "What\'s your email?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "We\'ll check if you have account",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 7),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey[200]!)),
                        contentPadding: EdgeInsets.all(20),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey[200]!)),
                      ),
                      onChanged: (value) {
                        setState(() {
                          emailText = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[400],
            ),
            CustomTextButton(
              text: "Continue",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginWithEmailScreen(),
                  ),
                );
              },
              isDisable: emailText.isEmpty,
            ),
          ],
        ),
      ),
    );
  }
}
