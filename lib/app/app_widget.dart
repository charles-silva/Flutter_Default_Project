import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9resto/app/shared/uiconfig.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setObservers([asuka.asukaHeroController]);

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: () => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: UiConfig.title,
        builder: (context, child) {
          return asuka.builder(context, child);
        },
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
