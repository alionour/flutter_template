import 'package:contest_1/src/app/navigation/navigator.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: NavigationService.router.routeInformationParser,
      routerDelegate: NavigationService.router.routerDelegate,
      routeInformationProvider:
          NavigationService.router.routeInformationProvider,
      builder: (context, child) => SafeArea(child: child!),
      title: 'Contest',
    );
  }
}
