import 'package:flutter/material.dart';

const double MARGIN_CARD = 15.0;
const double RADIUS_CARD = 15.0;

 class CardReusable extends StatelessWidget {

 CardReusable({@required this.colour , this.cardChild } );
    final Color colour  ; 
    final Widget cardChild ;
  

  @override
  Widget build(BuildContext context) {
    return 
       Container(
         child: cardChild,
         
                      margin: EdgeInsets.all(MARGIN_CARD),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(RADIUS_CARD),
                      color : colour,
                  )
                  );
          
  }}