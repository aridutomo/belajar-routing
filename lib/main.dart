import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/dependency_injection.dart';
import 'package:latihan1/routes/app_routes.dart';
import 'package:latihan1/routes/route_name.dart';

void main() {
  DependencyInjection.initControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      getPages: AppRoutes.routes,
      initialRoute: RouteName.root,
    );
  }
}