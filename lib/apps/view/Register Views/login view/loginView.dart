import 'package:flutter/material.dart';
import 'package:medical_app2/apps/view/Register%20Views/SingUp/singUpView.dart';
import 'package:medical_app2/apps/view/Register%20Views/register/register.dart';
import 'package:page_transition/page_transition.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 105,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Color(0xffA1A8B0))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Color(0xffA1A8B0))),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          color: Color(0xffA1A8B0),
                          fontSize: 15,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold),
                      fillColor: Colors.white54,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Color(0xffA1A8B0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Color(0xffA1A8B0))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Color(0xffA1A8B0))),
                      hintText: 'Enter your possword',
                      hintStyle: TextStyle(
                          color: Color(0xffA1A8B0),
                          fontSize: 15,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.bold),
                      fillColor: Colors.white54,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xffA1A8B0),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Color(0xffA1A8B0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff199a8e),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 400),
                          reverseDuration: Duration(milliseconds: 400),
                          type: PageTransitionType.rightToLeft,
                          child: LoginView(),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xff199A8E)),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff717784)),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 400),
                                reverseDuration: Duration(milliseconds: 400),
                                type: PageTransitionType.rightToLeft,
                                child: SingUpView(),
                                inheritTheme: true,
                                ctx: context),
                          );
                        },
                        child: Text(
                          'Sing UP',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff199A8E)),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
