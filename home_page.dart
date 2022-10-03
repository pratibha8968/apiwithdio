import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dio_api/routes.dart';

import 'app_bar.dart';
import 'data.dart';
import 'data_model.dart';
import 'elevation_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductListResponseModal? responseModal;

  @override
  void initState() {
    apiCall();
  }

  apiCall() {
    ApiRespository.getUser(id: "1").then((value) {
      responseModal = value as ProductListResponseModal?;
      if (mounted) setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(),
        body: Column(
          children: [
          Text(
          "Authentic World Cup Kits",
          style: TextStyle(fontSize: 28.0, color: Colors.blueGrey),
        ),
        Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
    border: Border.all(width: 1.0),
    ),
    child: Row(
    children: [
    SizedBox(
    width: 20.0,
    height: 20.0,
    ),
    Icon(Icons.search),
    SizedBox(
    width: 20.0,
    height: 20.0,
    ),
    Text("Search Kits"),
    ],
    ),
    ),
    Padding(
    padding: EdgeInsets.only(top: 10.0, left: 10.0),
    child: Row(children: [
    Icon(Icons.grid_4x4_sharp),
    SizedBox(height: 4.0, width: 25.0),
    Icon(Icons.grid_on_sharp),
    SizedBox(
    width: 200.0,
    ),
    Text(
    "FILTER",
    style: TextStyle(color: Colors.grey),
    ),
    ]),
    ),
            gridViewWidget(),
          ],
        ),
    );
  }

  gridViewWidget() {
    return Expanded(
      child: GridView.builder(
        itemCount: responseModal?.products?.length,
        itemBuilder: (context, index) {
          var item = responseModal?.products![index];
          return gridViewItem(item: item);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 6.0, mainAxisSpacing: 6.0),
      ),
    );
  }
  gridViewItem({item}) {
    return elevationCardWidget(
      elevation: 2,
      child: Column(
        children: [
      Expanded(
      child: Container(
      child: GridView.builder(
      itemCount: responseModal?.products?.length ?? 0,
        itemBuilder: (context, index) {
          Products? item = responseModal?.products![index];
          return Image.network(item?.images![0] ?? "");
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0),
      ),
    ),
    ),
    Container(
    child: Text(item?.brand ?? ""),
    ),
    ElevatedButton(
    onPressed: () {
    Navigator.pushNamed(context, Routes.center, arguments: item);
    },
    child: Text(item?.title ?? ""),
    ),
    Container(
    child: Text(item?.description ?? ""),
    ),
    Container(
    child: Text(item?.category ?? ""),
    ),
    Container(
    child: Text(item?.price?.toString() ?? ""),
    ),
    ],
    ),
    );
  }
}