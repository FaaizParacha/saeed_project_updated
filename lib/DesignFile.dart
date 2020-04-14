import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:saeedproject/bottomsheet.dart';
import 'package:saeedproject/constant.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton.icon(
              onPressed:(){},
              icon: Icon(Icons.check),
              color: Colors.grey.shade100,
              label : Text("Friends",style: TextStyle(color: Colors.black),),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
            ),
          ),
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              sizedBox,
              CircleAvatar(
                backgroundImage: AssetImage("assets/download.jfif"),
                radius: 70.0,
              ),
              sizedBox,
              Text("Noell Blue",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0
              ),),
              sizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.chat_bubble_outline,size: 25.0,),
                  SizedBox(width: 10.0,),
                  Text("Message",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900
                  ),),
                ],
              ),

            ],
          ),
          bottomsheet(),
        ],
      )
    );
  }
}