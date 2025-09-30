import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_ui/passwordfield.dart';
import 'package:flutter_application_1/login_ui/two_page.dart';
import 'package:flutter_svg/svg.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 11,
            right: MediaQuery.of(context).size.width / 11,
            top: MediaQuery.of(context).size.width / 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/Vector.svg',
                    width: 40,
                    height: 40,
                    colorFilter: const ColorFilter.mode(
                      Color(0xFF375DFB),
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Logoipsum",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 14),
              Text(
                'Sign in to your \nAccount',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 40),
              Text(
                'Enter your email and password to log in ',
                style: TextStyle(fontSize: 17, color: Colors.blueGrey),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 12),
              Text(
                'Email',
                style: TextStyle(fontSize: 17, color: Colors.blueGrey),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Введите адрес эл. почты',
                    filled: true,
                    fillColor: Colors.transparent,

                    // рамка когда поле активно
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                        color: Colors.blueGrey,
                        width: 0.8,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(
                        color: Color(0xFFACB5BB), 
                        width: 0.8,
                      ),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 39),
              Text(
                'Password',
                style: TextStyle(fontSize: 17, color: Colors.blueGrey),
              ),
              PasswordField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Color(0xFF4D81E7), fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TwoPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    overlayColor: Colors.black,
                  ),
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 30),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 0.5)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or",
                      style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey, thickness: 0.5)),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    overlayColor: Colors.blueGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/google.svg',
                        width: 40,
                        height: 40,
                      ),
                      const Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 18),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    overlayColor: Colors.blueGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/2021_Facebook_icon 1.svg',
                        width: 40,
                        height: 40,
                      ),
                      const Text(
                        'Continue with Facebook',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 143, 143, 143),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width / 18),
            ],
          ),
        ),
      ),
    );
  }
}
