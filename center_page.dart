import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dio_api/routes.dart';
import 'package:quantity_input/quantity_input.dart';

import 'app_bar.dart';
import 'data_model.dart';

class CenterPage extends StatefulWidget {
  Products data;

  CenterPage({Key? key, required this.data}) : super(key: key);

  @override
  State<CenterPage> createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  ProductListResponseModal? responseModal;
  Products? data;
  String? select;
  int simpleIntInput = 1;
  int steppedIntInput = 1;
  double simpleDoubleInput = 1;
  double steppedDoubleInput = 1;

  @override
  void initState() {
    data = widget.data;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data?.images?.length ?? 0,
          itemBuilder: (context, index) {
            return Image.network(data?.images![index] ?? "");
          }),
    ),
    Text(
    data?.title ?? "",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
    ),
    Text(data?.brand ?? ""),
    ElevatedButton(
    onPressed: () {
    Navigator.pushNamed(context, Routes.last);
    },
    child: Text(
    data?.price?.toString() ?? "",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
    ),
    ),
    SizedBox(
    height: 30.0,
    ),
    SizedBox(
    height: 70.0,
    ),
        QuantityInput(
            label: 'Qty',
            value: simpleIntInput,
            onChanged: (value) => setState(() =>
            simpleIntInput = int.parse(value.replaceAll(',', '')))),
      ],
      ),
      ),
    );
  }
}