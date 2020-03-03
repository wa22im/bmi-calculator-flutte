import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/card_reusable.dart';
import '../widgets/icon_reusable.dart';


import'../constants/constants.dart';

enum Gender{
male,
female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double heightpersonne=150.0 ; 


      Color maleSelectedColor =INACTIVECARDCOLOR; 
          
      Color femaleSelectedColor=INACTIVECARDCOLOR ; 

      Gender selectedGender = Gender.female; 
      
      void selectedCard(Gender gender){ 
          if ( gender ==Gender.male ){ 
         
              this.setState((){
              maleSelectedColor=ACTIVECARDCOLOR;
              femaleSelectedColor=INACTIVECARDCOLOR;
              });
          }
          else{ 
            this.setState((){
    maleSelectedColor=INACTIVECARDCOLOR;
              femaleSelectedColor=ACTIVECARDCOLOR;
              });
        
          }
      }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 50.0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch ,
          
          children : <Widget>[
            Expanded (
              child:Row(
                children: <Widget>[
                  Expanded(
                   
                    child : CardReusable(
                      onPressedfn:  (){
                       this.setState((){
                         selectedGender=Gender.male;
                       });
                     },
                    colour: selectedGender==Gender.male ? ACTIVECARDCOLOR : INACTIVECARDCOLOR,
                    cardChild: IconReusable(gender: 'MALE',icon: FontAwesomeIcons.mars,),
                    ),
                    ),
                    
                  Expanded(
                   child :CardReusable(
                     onPressedfn: (){
                       this.setState((){
                         selectedGender=Gender.female;
                       });
                     },
                    colour: selectedGender==Gender.female 
                    ? ACTIVECARDCOLOR 
                    : INACTIVECARDCOLOR,
                    cardChild: IconReusable(
                gender: 'FEMALE',
                icon: FontAwesomeIcons.venus,
              ),
              ),
                  ),
                  
                ],
              ), 
            ),
            Expanded(
              child: CardReusable( 
              colour:  ACTIVECARDCOLOR,  
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
              children :<Widget>
            [ 
               Text('HEIGHT ',
              style: DECORATION,),

            Row(
              children: <Widget>[
                Text('$heightpersonne',
                style:kNUMBERTEXTSTYLE,
                ),
                Text('cm',
                style: DECORATION,
                ),
              ],
            ),
             Expanded(
                
                
                  child :SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Colors.red.shade100,
                    thumbShape: RoundSliderThumbShape(
                      
                      enabledThumbRadius: 10.6,
                      
                      
                    ),
                    overlayShape: 
                    RoundSliderOverlayShape(
                      overlayRadius: 20.0,
                    )
                  ), 
                  child:Slider(
               
                value: heightpersonne,
                min: 130.0,
                max:230.0,
                activeColor:Color(0xFFEB1555),
                inactiveColor: Colors.white,
                onChanged:(double v ){
                  setState(() {
                    heightpersonne=v.round().toDouble();
                  });

                } ,
              ),
              ), 
              ),
               
            ],
            
            ),
            ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Expanded(child:CardReusable(
                    colour: ACTIVECARDCOLOR,),
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
 

    

  
  
