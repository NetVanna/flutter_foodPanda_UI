import 'package:flutter/material.dart';
import 'package:food_panda/constants/colors.dart';
import 'package:food_panda/screens/verification_email_screen.dart';

import '../widgets/custom_text_button.dart';
import '../widgets/custome_text_filed.dart';
import 'fill_account_info_screen.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  TextEditingController passController = TextEditingController();
  String passText = "";

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 20),
                  child: Image.asset(
                    "assets/images/login_icon.png",
                    width: 60,
                  ),
                ),
                Text(
                  "Login with your email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Login with your password to vannanet@gmail.com or get to login link vai email",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 30),
                CustomTextFiled(
                  noIcon: false,
                  labelText: "Password",
                  controller: passController,
                  onChanged: (value) {
                    setState(() {
                      passText = value;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "I forgot password?",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],

            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomTextButton(
                  text: "Login with Password",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FillAccountInfoScreen(),
                      ),
                    );
                  },
                  isDisable: passText.isEmpty,
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationEmailScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.mainColor)),
                    child: Center(
                      child: Text(
                        "Send me a login link",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
