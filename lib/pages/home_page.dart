import 'package:badges/badges.dart';
import 'package:doctor_app/data/json.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/popular_doctor.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
  /*    appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Badge(
              position: BadgePosition.topEnd(top: 7, end: -4),
              badgeContent: Text('1', style: TextStyle(color: Colors.white),),
              child: Icon(Icons.notifications_sharp, color: primary,),
            ),
          )
        ],
      ),*/
      body: getBody(),
    );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10,top:50),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(child: Text("Bienvenue", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),),
                        SizedBox(height: 10,),
                        Container(child: Text("Protégez vos familles", style: TextStyle(fontSize: 22,color: primary, fontWeight: FontWeight.w600),)),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.search,size: 25,),
                    SizedBox(width: 10,)
                  ],
                ),
                SizedBox(height: 55,),
                Row(
                  children: [
                    Container(child: Text("les infirmiéres", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)),
                    Spacer(),
                    Container(child: Text("Plus", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)),

                  ],
                ),
                SizedBox(height:10),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBox(title: "Heart", icon: Icons.favorite, color: Colors.red, ),
                      CategoryBox(title: "Medical", icon: Icons.local_hospital, color: Colors.blue, ),
                      CategoryBox(title: "Dental", icon: Icons.details_rounded, color: Colors.purple, ),
                      CategoryBox(title: "Healing", icon: Icons.healing_outlined, color: Colors.green, ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Container(child: Text("les Doctors Generaliste", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)),
                    Spacer(),
                    Container(child: Text("Plus", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)),

                  ],
                ),
                SizedBox(height:10),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBox(title: "Heart", icon: Icons.favorite, color: Colors.red, ),
                      CategoryBox(title: "Medical", icon: Icons.local_hospital, color: Colors.blue, ),
                      CategoryBox(title: "Dental", icon: Icons.details_rounded, color: Colors.purple, ),
                      CategoryBox(title: "Healing", icon: Icons.healing_outlined, color: Colors.green, ),
                    ],
                  ),
                ),

              ]
          ),
        ),
      );
  }
}
