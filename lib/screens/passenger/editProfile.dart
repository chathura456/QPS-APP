import 'package:finalqps/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _QRScanner();
}

class _QRScanner extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
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
