import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app2/apps/view/Register%20Views/wellcomViews/RegisterViews.dart';
import 'package:medical_app2/apps/view/Register%20Views/widgets/initStateWidgets.dart';
import 'package:page_transition/page_transition.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitStateWidgets(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: InitStateWidgets(),
              type: PageTransitionType.scale,
              settings: settings,
            );
          default:
            return null;
        }
      },
    );
  }
}
