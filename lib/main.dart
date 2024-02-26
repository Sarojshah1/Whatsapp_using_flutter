import 'package:flutter/material.dart';
import 'package:whatsapp/Responsive/responsive_layout.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/screens/mobilescreenlayout.dart';
import 'package:whatsapp/screens/webscreenlayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundcolor,

      ),
      home:const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout() ,webScreenLayout:  WebScreenLayout() ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

