import 'package:flutter/material.dart';
import 'package:telalogin/views/auth_or_home_page.dart';
import 'package:telalogin/views/auth_page.dart';
import 'package:telalogin/views/home.dart';
import 'package:provider/provider.dart';
import 'models/auth.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /*  const MyApp({Key? key}) : super(key: key); */

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          routes: {
            Routes.home: (_) => Home(),
            Routes.authOrHome: (_) => AuthOrHomePage()
          }),
    );
  }
}
