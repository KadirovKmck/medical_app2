import 'package:flutter/material.dart';
import 'package:medical_app2/apps/view/Register%20Views/wellcomViews/RegisterViews.dart';

class InitStateWidgets extends StatefulWidget {
  InitStateWidgets({Key? key}) : super(key: key);

  @override
  State<InitStateWidgets> createState() => _InitStateWidgetsState();
}

class _InitStateWidgetsState extends State<InitStateWidgets> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      // Переход на другой экран после 5 секунд
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => RegisterViews(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff147B72),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 129.536,
              height: 129.518,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/initSate.png',
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Medics',
            style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
        ],
      ),
    );
  }
}
