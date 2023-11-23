import 'package:flutter/material.dart';
import 'package:medical_app2/apps/view/Register%20Views/login%20view/loginView.dart';
import 'package:page_transition/page_transition.dart';

class RegisterHomeView extends StatefulWidget {
  const RegisterHomeView({super.key});

  @override
  State<RegisterHomeView> createState() => _SingUpViewState();
}

class _SingUpViewState extends State<RegisterHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/initSate2.png',
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Text(
            'Medics',
            style: TextStyle(
                color: Color(0xff199A8E),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Let’s get started!',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 55,
            width: 245,
            child: Center(
              child: Text(
                  'Login to enjoy the features we’ve provided, and stay healthy!',
                  style: TextStyle(
                      color: Color(0xff717784),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
            ),
          ),
          SizedBox(
            height: 35,
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
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xff199A8E)),
              ),
              child: Center(
                  child: Text(
                'Sing up',
                style: TextStyle(
                    fontSize: 19,
                    color: Color(0xff199A8E),
                    fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
