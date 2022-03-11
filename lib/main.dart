import 'package:flutter/material.dart';
import 'package:i9resto/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9resto/app/app_widget.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
