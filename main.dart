import 'package:flutter/material.dart';
import 'package:flutter_dio_api/routes.dart';

import 'data.dart';

void main() {
  ApiRespository();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: Routes.routes,
    );
  }
}