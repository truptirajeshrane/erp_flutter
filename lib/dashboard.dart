import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget{

  TextEditingController firsttxtfield = new TextEditingController();
  TextEditingController secondtxtfield = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final logo = Hero(
      tag: 'hero',
      child:CircleAvatar(
        child: Image.asset('assets/partner.png'),
        backgroundColor: Colors.transparent,
        radius: 100,
      ),
    );

    final contact =   TextFormField(
      controller: secondtxtfield,

      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Price List',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Container(
        margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
       child: Column(
         children: <Widget>[
           logo,
           SizedBox(height: 5,),
           contact,
           SizedBox(height: 5,),
         ],
       ),

       /*
        child: FlatButton(onPressed: (){
          Navigator.pop(context,'/login');
        },*/


        ) ,



    );


  }

}
