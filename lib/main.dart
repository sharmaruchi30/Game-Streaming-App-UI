import 'package:flutter/material.dart';
import 'package:game_streaming_app/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      // ignore: prefer_const_constructors
      builder:(context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Game Streaming",
        home:  const HomePage(),
      ),
    );
  }
}

