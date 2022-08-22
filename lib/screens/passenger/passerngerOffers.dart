import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';
import 'package:finalqps/screens/screens.dart';

class Offers1 extends StatefulWidget {
  const Offers1({Key? key}) : super(key: key);

  @override
  State<Offers1> createState() => _Offers1State();
}

class _Offers1State extends State<Offers1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offers'),
        backgroundColor: AppColors.kPrimaryColor,
        leading: HomePageSelect(),
      ),
    );
  }
}
