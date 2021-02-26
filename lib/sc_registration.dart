import 'package:flutter/material.dart';
import 'package:flutter_application_2/contains.dart';

class ScreenRegistration extends StatefulWidget {
  @override
  _ScreenRegistrationState createState() => _ScreenRegistrationState();
}

class _ScreenRegistrationState extends State<ScreenRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Images
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          // ....
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildAppBar(),
                    _buildTitle(),
                    _buildTextField(),
                    Text(
                      "The password for your new MQL5\n"
                      'acount will be sent to the special email\n'
                      'adress',
                      textAlign: TextAlign.center,
                      style: labelStyle.copyWith(
                        color: kTextColor,
                      ),
                    ),
                    _buildRegisterButton(),
                    Text(
                      'or',
                      style: labelStyle.copyWith(color: kTextColor),
                    ),
                    _buildFbButton(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Cancel',
              style: labelStyle.copyWith(
                color: kTextColor,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Registration',
              style: labelStyle.copyWith(
                color: kTextColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'MQL',
                  style: headingStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '5',
                  style: headingStyle.copyWith(
                    color: kamberColor,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Join Traders Community\nwww.mql5.com",
            style: headingStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _buildTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 30, 30, 15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: kTextColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Login',
                style: labelStyle,
              ),
              Expanded(
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    hintStyle: labelStyle.copyWith(color: kDivider),
                    border: InputBorder.none,
                    hintText: 'enter login',
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: kDivider,
            indent: 10,
            endIndent: 10,
          ),
          Row(
            children: [
              Text(
                'Email',
                style: labelStyle,
              ),
              Expanded(
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'email',
                    hintStyle: labelStyle.copyWith(color: kDivider),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildRegisterButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "Register",
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  _buildFbButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image(
              image: AssetImage('assets/images/icon_fb.png'),
              height: 20,
              width: 20,
            ),
          ),
          Text(
            "Continue with Facebook",
            style: labelStyle.copyWith(color: kTextFacebookColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
