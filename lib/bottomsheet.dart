import 'package:flutter/material.dart';
import 'constant.dart';


class bottomsheet extends StatefulWidget {
  @override
  _bottomsheetState createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        DraggableScrollableSheet(
        maxChildSize: 1.0,
        minChildSize: 0.4,
        initialChildSize: 0.5,
        builder: (context, scrollableController)
        {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollableController,
            child: Container(
                height: height,
                decoration: BoxDecoration(
                  borderRadius: bottomsheetRadius,
                  color: Colors.blueGrey.shade50,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("About",style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0
                          )),
                          Icon(Icons.more_vert,color: Colors.black,),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: RaisedButton(
                            color: Colors.blue.shade200,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: radius
                            ),
                          ),
                        ),
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: RaisedButton(
                            color: Colors.indigo,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: radius
                            ),
                          ),
                        ),
                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: RaisedButton(
                            color: Colors.grey.shade200,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: radius
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ),
          );
        }
    ),

        DraggableScrollableSheet(
            maxChildSize: 1.0,
            minChildSize: 0.2,
            initialChildSize: 0.4,
            builder: (context, scrollableController) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: scrollableController,
                child: Container(
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: bottomsheetRadius,
                      color: Colors.black
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text("Feed",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0
                            ),),
                          ),
                          sizedBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: AssetImage("assets/download.jfif"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Noell Blue",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0
                                  ),),
                                  Text("Yesterday at 8:14 PM",style: TextStyle(
                                      color: Colors.grey
                                  ),),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 80.0)),
                              Icon(Icons.more_vert,color: Colors.white,),
                            ],
                          ),
                          sizedBox,
                          Row(
                            children: <Widget>[
                              Text("Blue magic!",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0
                              ),),
                              sizedboxWidth,
                              Image.asset("assets/rhombus.png",color: Colors.blue,height: 15.0,width: 20.0,),
                              sizedboxWidth,
                              Image.asset("assets/rhombus.png",color: Colors.blue,height: 20.0,width: 25.0,),
                              sizedboxWidth,
                              Text("Model @dejyosha",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0
                              ),)
                            ],
                          ),
                          sizedBox,
                          Image.asset("assets/mario.jfif",fit: BoxFit.fitWidth,)
                        ],
                      ),
                    ),
                ),
              );
            }
        ),
      ],
    );
  }
}
