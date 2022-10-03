


import 'package:flutter/cupertino.dart';
import 'package:flutter_dio_api/product_list_response_model.dart';

import 'center_page.dart';
import 'data_model.dart';
import 'home_page.dart';
import 'last_page.dart';

class Routes {
  static const String home = '/home';
  static const String center = '/center';
  static const String last = '/last';

  static Map<String, WidgetBuilder> routes = {
    '/home': (context) => HomePage(),
    '/center': (context) => CenterPage(
        data: ModalRoute.of(context)?.settings.arguments as Products),
    '/last': (context) => LastPage(),
  };
}