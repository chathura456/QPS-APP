import 'package:finalqps/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:finalqps/screens/screens.dart';

class ReportProblem extends StatelessWidget {
  const ReportProblem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Problem'),
        backgroundColor: AppColors.kPrimaryColor,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const PassengerHome()));
          },
        ),
      ),
    );
  }
}
