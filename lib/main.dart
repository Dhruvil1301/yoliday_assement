import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/features/home/homeView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set the base design size (e.g., iPhone X resolution)
      minTextAdapt: true, // Adapt text size based on screen size
      splitScreenMode: true, // For tablets and split-screen mode
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeView(),
        );
      },
    );
  }
}


