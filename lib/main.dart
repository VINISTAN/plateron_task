import 'package:flutter/material.dart';
import 'package:plateron_demo/screens/itemselect_page.dart';
import 'package:provider/provider.dart';
import 'package:plateron_demo/providers/selectitem_provider.dart';


void main() {
  runApp(
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> AppleProvider()),
    ChangeNotifierProvider(create: (_)=> MangoProvider()),
  ],child: const MyApp()),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ItemSelectedPage(),
    );
  }
}




