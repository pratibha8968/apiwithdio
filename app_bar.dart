import 'package:flutter/material.dart';

appbar() {
  return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
      "FIFA World Cup Kits",
      style: TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
  ),
  leading: Drawer(
  child: ListView(
  children: [
  ListTile(
  title: Text(""),
  ),
  ListTile(
  title: Text("hello"),
  ),
  ListTile(
  title: Text("hiiii"),
  ),
  ],
  ),
  ),
    actions: [
      Align(
        alignment: Alignment(0.8, 0.5),
      ),
      Icon(
        Icons.shopping_cart_checkout,
        color: Colors.black,
      ),
      // Tooltip(child: const Text("Add to Cart")),
    ],
  );
}