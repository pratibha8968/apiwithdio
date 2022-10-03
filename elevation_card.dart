import 'package:flutter/material.dart';

elevationCardWidget({required Widget child, double? elevation}) {
  return Material(
    elevation: elevation ?? 20,
    child: child,
  );
}