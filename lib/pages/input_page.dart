import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/card_reusable.dart';
import '../widgets/icon_reusable.dart';



const ACTIVECARDCOLOR = Color(0xFF1D1E33);
const BOTTOMCONTAINERCOLOR = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 50.0,
      ),
      body: Container(
        child: Column(
          
          children : <Widget>[
            Expanded (
              child:Row(
                children: <Widget>[
                  Expanded(child: CardReusable(
                    colour: ACTIVECARDCOLOR,
                    cardChild: IconReusable(gender: 'MALE',icon: FontAwesomeIcons.mars,),
),
),
                  Expanded(child: CardReusable(
                    colour: ACTIVECARDCOLOR,
                    cardChild: IconReusable(
                gender: 'FEMALE',
                icon: FontAwesomeIcons.venus,
              ),
                  ),
                  ),
                ],
              ), 
            ),
            Expanded(child: CardReusable(
              colour:  ACTIVECARDCOLOR,              
            ),
            ),
            Expanded(child: Row(
                children: <Widget>[
                  Expanded(child:CardReusable(colour: ACTIVECARDCOLOR,),
                  ),
                  Expanded(child: CardReusable(
                    colour: ACTIVECARDCOLOR
                  ),
                  ),
                ],
              ), 
              ),
                Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(
                top:10.0
             ),
             width: double.infinity,
             height: MediaQuery.of(context).size.height*0.1,
            ),
          ],
        ),
      ),
    );
  }
  }
 

    

  
  
