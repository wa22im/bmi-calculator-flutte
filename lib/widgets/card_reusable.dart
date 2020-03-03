import 'package:flutter/material.dart';
import'../constants/constants.dart';



 class CardReusable extends StatelessWidget {

 CardReusable({@required this.colour,this.onPressedfn , this.cardChild } );
    final Color colour  ; 
    final Widget cardChild ;
    final Function onPressedfn ;

  @override
  Widget build(BuildContext context) {
    return 
  GestureDetector( 
                      
       onTap: onPressedfn,
      child :  Container(
      child: cardChild,
                      margin: EdgeInsets.all(MARGIN_CARD),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(RADIUS_CARD),
                      color : colour,
                  ),
      ),
                  );
          
  }}