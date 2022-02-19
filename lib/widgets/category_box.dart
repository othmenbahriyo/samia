import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox({ Key? key, required this.title, required this.icon, this.color}) : super(key: key);
  IconData icon;
  Color? color;
  String title;

  @override
  Widget build(BuildContext context) {
    return  
      Container(
        width: 270,
        height: 200,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        
        child: Row(
          children: [
           Column(
             children: [
               Text('Inf: Samia',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
               Row(
                 children: [
                   Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 14,),
                   Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 14,),
                   Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 14,),
                   Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 14,),
                   Icon(Icons.star_rate_rounded,color: Colors.yellow,size: 14,),

                 ],
               ),
               SizedBox(height: 10,),
               Text('5 ans',style: TextStyle(fontSize: 14),),
               Text('Experience',style: TextStyle(fontSize: 14),),

             ],
           ),
            Spacer(),
            Image.network('https://pngimg.com/uploads/doctor/doctor_PNG15980.png',
            height: 240,
            width: 110,
            )
          ],
        ) 
      );
  }
}