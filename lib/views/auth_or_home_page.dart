import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telalogin/models/auth.dart';
import 'package:telalogin/views/auth_page.dart';
import 'package:telalogin/views/home.dart';

class AuthOrHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of(context);
    return auth.isAuth ? Home() : AuthPage();
  }
}
