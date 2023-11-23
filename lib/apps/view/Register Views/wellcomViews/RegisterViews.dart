import 'package:flutter/material.dart';
import 'package:medical_app2/apps/view/Register%20Views/register/register.dart';
import 'package:medical_app2/apps/view/Register%20Views/wellcomViews/RegesterSecondViews.dart';
import 'package:page_transition/page_transition.dart';

class RegisterViews extends StatefulWidget {
  const RegisterViews({Key? key}) : super(key: key);

  @override
  _RegisterViewsState createState() => _RegisterViewsState();
}

class _RegisterViewsState extends State<RegisterViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 320, top: 100),
            child: TextButton(
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
              child: const Text(
                'Skip',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  width: 290,
                  height: 460,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/register1.png'))),
                ),
                Align(
                  heightFactor: 0.8,
                  child: Container(
                    width: 350,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Color(0xffF4F7FF)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Container(
                          height: 100,
                          width: 330,
                          child: Text(
                            'Consult only with a doctor you trust',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 400),
                                        reverseDuration:
                                            Duration(milliseconds: 400),
                                        type: PageTransitionType.rightToLeft,
                                        child: RegesterSecondViews(),
                                        inheritTheme: true,
                                        ctx: context),
                                  );
                                },
                                child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xff199A8E),
                                    ),
                                    child: Icon(Icons.arrow_forward)),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
