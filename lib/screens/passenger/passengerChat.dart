import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';
import 'package:finalqps/screens/screens.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Chat1 extends StatefulWidget {
  const Chat1({Key? key}) : super(key: key);

  @override
  State<Chat1> createState() => _Chat1State();
}

class _Chat1State extends State<Chat1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        backgroundColor: AppColors.kPrimaryColor,
        leading: const HomePageSelect(),
      ),

    );
  }
}
