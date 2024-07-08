

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shopat/Screens/home.dart';

void main() async{
  await dotenv.load(fileName:'/home/oriohac/StudioProjects/shopat/.env');
  runApp(const Shopat());
}

class Shopat extends StatelessWidget {
  const Shopat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

