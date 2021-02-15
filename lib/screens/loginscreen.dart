import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_ui/widgets/curve_clipper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ClipPath(
              clipper: CurveClipper(),
              child: Image(
                width: double.infinity,
                image: AssetImage('assets/images/login_background.jpg'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
