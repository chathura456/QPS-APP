import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalqps/screens/screens.dart';
import 'package:finalqps/screens/selectScreen/homePageSelect.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  State<QRScanner> createState() => _QRScanner();
}

class _QRScanner extends State<QRScanner> {
 /* Widget homeScreen = const PassengerHome();
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loginUser = UserModel();
  late String? accType;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("Users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loginUser = UserModel.fromMap(value.data());
      setState(() {
        accType = loginUser.type;
        if (accType == 'P') {
          homeScreen = const PassengerHome();
        }
        if (accType == 'C') {
          homeScreen = const ConductorHome();
        }
      });
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
        backgroundColor: AppColors.kPrimaryColor,
       leading: const HomePageSelect(),
       /* leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    HomePageSelect()));
          },
        ),*/
      ),



    );
  }
}
