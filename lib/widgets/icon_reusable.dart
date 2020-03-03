import 'package:flutter/material.dart';

import'../constants/constants.dart';



 


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