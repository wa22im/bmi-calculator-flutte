import 'package:flutter/material.dart';

const double ICON_SIZE = 40.0;

const double BOX_SIZED_HEIGHT = 15.0;

const Color COLOR_CARD =   Color(0xFF8D8E98);

const TextStyle DECORATION = TextStyle(
                            fontSize: 16.0,
                            fontWeight:FontWeight.bold ,
                            color: Color(0xFF8D8E98),
                          );

 


class IconReusable extends StatelessWidget {
    const IconReusable({Key key,this.gender,this.icon}) : super(key: key);

    final String gender ; 

    final IconData icon ; 


  
    @override
    Widget build(BuildContext context) {
      
            return Container(
              child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               Icon(
                                icon,
                                size:ICON_SIZE

                        ),
                        SizedBox(
                          height: BOX_SIZED_HEIGHT,
                        ),
                        Text(
                          '$gender',

                          style:DECORATION,
                        )
                      ],
                    ), 
      );
    }
  }