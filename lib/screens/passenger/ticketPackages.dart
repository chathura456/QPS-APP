import 'package:finalqps/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';

class TicketPackages extends StatefulWidget {
  const TicketPackages({Key? key}) : super(key: key);

  @override
  State<TicketPackages> createState() => _QRScanner();
}

class _QRScanner extends State<TicketPackages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Packages'),
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
