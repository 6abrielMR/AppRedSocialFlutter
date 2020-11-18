import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/avatar_button.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/register_form.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';

  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(88);
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
                  top: -orangeSize * .45,
                  left: -orangeSize * .2,
                  child: Circle(
                    size: orangeSize,
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                  ),
                ),
                Positioned(
                  top: pinkSize * .2,
                  child: Column(
                    children: [
                      Text(
                        "Hello!\nSign up to get started.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: responsive.dp(3.5)),
                      ),
                      SizedBox(
                        height: responsive.dp(8),
                      ),
                      AvatarButton(
                        imageSize: responsive.wp(25),
                      )
                    ],
                  ),
                ),
                RegisterForm(),
                Positioned(
                  left: 15,
                  top: 15,
                  child: SafeArea(
                    child: CupertinoButton(
                      color: Colors.black26,
                      padding: EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(30),
                      child: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
