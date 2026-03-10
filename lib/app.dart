import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'core/routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      title: 'Note Taking',
      theme: ThemeData.light(),
    );
  }
}