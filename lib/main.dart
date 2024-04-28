import 'package:flutter/material.dart';


void main() => runApp(
    MyPersonalCard()
);

class MyPersonalCard extends StatelessWidget {
  String get email => 'test@gmail.com';
  String get profesion => 'SOFTWARE DEVELOPER';
  String get name => 'Your Name';
  String get mobilenummer => '+995 598 111111';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(  // კონტენტის ავტომატური მორგება ეკრანზე (ოპტიმიზაცია)
          child: Column(     // სვეტად განლაგება ყველაფრის
// ყველა კომპონენტის ეკრანის ცენტრში მოთავსება
            mainAxisAlignment: MainAxisAlignment.center,
//-----------------------------------------
             children: <Widget>[  // children არის კლასი რომელშიც გაწევრიანებულია ქვემოთ ჩამოთვლილი კლასები
// პროფილის ფოტო---------------------------
               CircleAvatar(
                 backgroundImage: AssetImage('images/no avatar.png'),
                 radius: 60,  // რადიუსი ზრდის ფოტოს მასშტაბს
               ),
//------------------------------------------
// სახელის ველი-----------------------------
               Text(name,
                 style: TextStyle(
                   fontFamily: 'Pacifico',
                   fontSize: 20,
                   color: Colors.white,
                 ),
               ),
//-------------------------------------------
//  პროფესია (ქვესათაური)-----------------------
             Text(profesion,
             style: TextStyle(
               fontFamily: 'SourceSans3',
               fontSize: 20,
               color: Colors.teal.shade100,
               letterSpacing: 2.5,
               fontWeight: FontWeight.bold,
             ),
             ),
//  პროფესიის და იმეილის ველებს შორის მოკლე ხაზი (დაშორება)
             SizedBox(
               height: 20.0,
               width: 200,
               child: Divider(
                 color: Colors.teal.shade100,
               ),
             ),
//--------------------------------------------------------
//  იმეილის ველი------------------------------------------
             Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
               child: ListTile(
                 leading: Icon(
                   Icons.email,
                   color: Colors.blueAccent,
                 ),
                 title: Text(email,
                 style: TextStyle(
                   fontSize: 20.0,
                   color: Colors.blue,
                   fontFamily: 'SourceSans3',
                 ),),
               ),
             ),
//----------------------------------------------------------
//  ტელეფონის ველი-----------------------------------------
               Card(
                 color: Colors.white,
                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                 child: ListTile(
                   leading: Icon(
                     Icons.phone,
                     color: Colors.blueAccent,
                   ),
                   title: Text(mobilenummer,
                     style: TextStyle(
                       fontSize: 20.0,
                       color: Colors.blue,
                       fontFamily: 'SourceSans3',
                     ),),
                 ),
               )
//-------------------------------------------------------------
             ],
          )
        ),
      ),
    );
  }
}