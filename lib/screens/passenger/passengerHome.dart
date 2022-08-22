import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PassengerHome extends StatefulWidget {
  const PassengerHome({Key? key}) : super(key: key);

  @override
  State<PassengerHome> createState() => _PassengerHomeState();
}

class _PassengerHomeState extends State<PassengerHome> with AutomaticKeepAliveClientMixin {
  User? user=FirebaseAuth.instance.currentUser;
  UserModel loginUser=UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance.collection("Users").doc(user!.uid).get().then((value) {
      loginUser= UserModel.fromMap(value.data());
      setState(() {});
    } );
  }

  var currentPage = DrawerSections.home1;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: AppColors.kPrimaryColorDark,
        child: SafeArea(
          //Appbar designs
          child: Scaffold(
            key: _key,
            appBar: AppBar(
              title: Text(
                '${loginUser.points} LKR',
              ),
              centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.notifications),
                ),
              ],
              backgroundColor: AppColors.kPrimaryColor,
            ),
            drawer: Drawer(
              child: Container(
                  child: Column(
                    children: [
                      const DrawerHeader1(),
                      navList(),
                    ],
                  ),
                ),

            ),
            body: Container(
              color: AppColors.kPrimaryColor5,
              child: Column(
                children: [
                  Column(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: EdgeInsets.zero,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*0.25,
                              width: double.infinity,
                              child: Carousel(
                                dotSize: 5.0,
                                indicatorBgPadding: 8,
                                images: [
                                  Image.asset('asset/slider/1.jpg',fit: BoxFit.cover,),
                                  Image.asset('asset/slider/2.png',fit: BoxFit.cover,),
                                  Image.asset('asset/slider/3.jpg',fit: BoxFit.cover,),
                                  Image.asset('asset/slider/4.jpg',fit: BoxFit.cover,),
                                  Image.asset('asset/slider/5.jpg',fit: BoxFit.cover,),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5,)
                    ],
                  ),

                      Expanded(
                          flex: 1,
                          child: CustomScrollView(
                            primary: false,
                            slivers: [
                              SliverPadding(padding: const EdgeInsets.fromLTRB(50, 20, 50, 40),
                                sliver: SliverGrid.count(crossAxisCount: 2,
                                  crossAxisSpacing: 50,
                                  mainAxisSpacing: 30,
                                  children: const [
                                    MyListTiles(text: 'Edit\n Profile', iconData: Icons.manage_accounts, nextScreen: EditProfile()),
                                    MyListTiles(text: 'Ticket\n Packages', iconData: Icons.confirmation_number, nextScreen: EditProfile()),
                                    MyListTiles(text: 'Bus\n Schedules', iconData: Icons.event_note, nextScreen: EditProfile()),
                                    MyListTiles(text: 'Live\n Tracker', iconData: Icons.place, nextScreen: EditProfile()),
                                    MyListTiles(text: 'Ads\n Section', iconData: Icons.shop_2, nextScreen: EditProfile()),
                                    MyListTiles(text: 'Payment\n History', iconData: Icons.history, nextScreen: EditProfile()),
                                  ],),
                              )
                            ],

                          ),
                        ),





                ],
               
              ),
            ),




          ),
        ),
      ),
    );
  }

  Widget navList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(

        children: [
          menuItem(1, "Home", Icons.home,
              currentPage == DrawerSections.home1 ? true : false),
          menuItem(2, "Profile", Icons.account_circle,
              currentPage == DrawerSections.profile ? true : false),
          menuItem(3, "Report Problem", Icons.report,
              currentPage == DrawerSections.report ? true : false),
          menuItem(4, "Settings", Icons.settings,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(5, "Contact us", Icons.call,
              currentPage == DrawerSections.contact ? true : false),
          menuItem(6, "About us", Icons.info,
              currentPage == DrawerSections.about ? true : false),
          const SizedBox(height: 50,),
          Divider(height: 10,thickness: 2,color: AppColors.kPrimaryColor10,),
          menuItem(7, "LogOut", Icons.logout,
              currentPage == DrawerSections.logout ? true : false),



        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return InkWell(
      onTap: () {
        _key.currentState?.openEndDrawer();
        switch (id) {
          case 1:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PassengerHome()));
            break;
          case 2:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PassengerProfile()));
            break;
          case 3:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ReportProblem()));
            break;
          case 4:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ReportProblem()));
            break;
          case 5:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ReportProblem()));
            break;
          case 6:
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ReportProblem()));
            break;
          case 7:
            logout(context);
            //Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
            Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
            break;
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(

          children: [
            Expanded(
              child: Icon(
                icon,
                size: 25,
                color: AppColors.kPrimaryColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context)async{
    await FirebaseAuth.instance.signOut();
    /*Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context)=> LoginScreen())
    );*/
  }

  @override
  bool get wantKeepAlive => true;

}

enum DrawerSections { home1, profile, report, settings, contact, about, logout }
