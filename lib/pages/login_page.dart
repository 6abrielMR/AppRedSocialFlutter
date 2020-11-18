import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'loginPage';

  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(60);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.heigth,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: -pinkSize * .4,
                  right: -pinkSize * .2,
                  child: Circle(
                    size: pinkSize,
                    colors: [Colors.pinkAccent, Colors.pink],
                  ),
                ),
                Positioned(
                  top: -orangeSize * .6,
                  left: -orangeSize * .2,
                  child: Circle(
                    size: orangeSize,
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                  ),
                ),
                Positioned(
                  top: pinkSize * .35,
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(20),
                      ),
                      SizedBox(
                        height: responsive.dp(5),
                      ),
                      Text(
                        "Hello Again \nWelcom Back!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: responsive.dp(3.5)),
                      )
                    ],
                  ),
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
