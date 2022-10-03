import 'package:flutter_dio_api/product_list_response_model.dart';

import 'data_model.dart';

class User {
  ProductListResponseModal data;

  User({
    required this.data,
  });

  factory User.fromJson(Map<String, dynamic>? json) => User(
    data: ProductListResponseModal.fromJson(json?["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}