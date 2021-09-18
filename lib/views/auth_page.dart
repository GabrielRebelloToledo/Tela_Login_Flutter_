import 'dart:math';

import 'package:flutter/material.dart';
import 'package:telalogin/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(118, 228, 255, 0.5),
              Color.fromRGBO(60, 92, 255, 0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
        ),
        Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange.shade900,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Text(
                  'Colocar texto',
                  style: TextStyle(
                      fontSize: 45,
                      fontFamily: '',
                      color:
                          Theme.of(context).accentTextTheme.headline6!.color),
                ),
              ),
              AuthForm(),
            ],
          ),
        )
      ],
    ));
  }
}
