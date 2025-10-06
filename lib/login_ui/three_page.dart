import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_ui/passwordfield.dart';
import 'package:flutter_application_1/login_ui/two_page.dart';
import 'package:flutter_svg/svg.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.blue, Colors.white, Colors.white],
            stops: [0.0, 0.5, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 11,
              right: MediaQuery.of(context).size.width / 11,
              top: MediaQuery.of(context).size.width / 15,
            ),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Vector.svg',
                        width: MediaQuery.of(context).size.width / 20,
                        height: MediaQuery.of(context).size.height / 20,
                        colorFilter: const ColorFilter.mode(
                          Color(0xFF375DFB),
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 35),
                      const Text(
                        'Sign in to your \nAccount',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 40),
                      const Text(
                        'Enter your email and password to log in ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 28),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 20,
                      right: MediaQuery.of(context).size.width / 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 32,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 15,
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
                                  width: MediaQuery.of(context).size.width / 18,
                                  height:
                                      MediaQuery.of(context).size.height / 18,
                                ),
                                const Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 0.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                "Or login with",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 0.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              hintText: 'Введите адрес эл. почты',
                              filled: true,
                              fillColor: Colors.transparent,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 30,
                        ),
                        PasswordField(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  color: Color(0xFF4D81E7),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 15,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TwoPage(),
                                ),
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don"t have an account?  ',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 143, 143, 143),
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
