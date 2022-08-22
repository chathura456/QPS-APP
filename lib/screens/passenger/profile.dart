import 'package:finalqps/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';

class PassengerProfile extends StatefulWidget {
  const PassengerProfile({Key? key}) : super(key: key);

  @override
  State<PassengerProfile> createState() => _PassengerProfileState();
}

class _PassengerProfileState extends State<PassengerProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
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
        body: Container(
          child: CustomScrollView(
            primary: false,
            slivers: [
              SliverPadding(padding:  EdgeInsets.all(40.0),
                sliver: SliverGrid.count(crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 35,
                children: const [
                  MyListTiles(text: 'Edit\n Profile', iconData: Icons.manage_accounts, nextScreen: EditProfile()),
                  MyListTiles(text: 'Ticket\n Packages', iconData: Icons.confirmation_number, nextScreen: EditProfile()),
                  MyListTiles(text: 'Bus\n Schedules', iconData: Icons.event_note, nextScreen: EditProfile()),
                  MyListTiles(text: 'Live\n Tracker', iconData: Icons.place, nextScreen: EditProfile()),
                  MyListTiles(text: 'Ads\n Section', iconData: Icons.shop_2, nextScreen: EditProfile()),
                  MyListTiles(text: 'Payment\n History', iconData: Icons.history, nextScreen: EditProfile()),
                  MyListTiles(text: 'Ads\n Section', iconData: Icons.shop_2, nextScreen: EditProfile()),
                  MyListTiles(text: 'Payment\n History', iconData: Icons.history, nextScreen: EditProfile()),
                ],),
              )
            ],

          ),
        ),

    );
  }
}
