import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/custom_text_button.dart';
import '../widgets/custome_text_filed.dart';
import 'home_screen.dart';

class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String firstNameText = "";
  String lastNameText = "";
  String passText = "";

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
                  color: firstNameText.isEmpty ||
                          lastNameText.isEmpty ||
                          passText.isEmpty
                      ? Colors.grey[400]
                      : AppColors.mainColor),
            ),
          ),
        ],
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
                    "assets/images/profile_icon.png",
                    width: 60,
                  ),
                ),
                Text(
                  "Let\'s get you started",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "First let\'s create your food panda account with vannanet@gamil.com",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      padding: EdgeInsets.only(right: 7),
                      child: TextFormField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          labelText: "First Name",
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
                            firstNameText = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 15,
                      padding: EdgeInsets.only(right: 7),
                      child: TextFormField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          labelText: "Last Name",
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
                            lastNameText = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
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
              ],
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomTextButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  isDisable: passText.isEmpty ||
                      firstNameText.isEmpty ||
                      lastNameText.isEmpty,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
