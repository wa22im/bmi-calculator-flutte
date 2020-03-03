import 'package:bmi_calculator/utilitiesclasses/calculator_bmi.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/card_reusable.dart';
import '../widgets/icon_reusable.dart';
import 'resulat_page.dart';


import'../constants/constants.dart';

enum Gender{
male,
female
}
enum WazenVAriation{
  plus ,
  moins 
}

class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double heightpersonne=150.0 ; 
  int wazen = 50 ; 
  int age = 16 ; 

  void changeWazen(WazenVAriation w) {
    w == WazenVAriation.plus ? setState(()=>wazen++) : setState(()=>wazen--);

  }

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
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.center,
              children :<Widget>
            [ 
              Container(
                
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.only(
                  top:10.0,
                  left: 5.0
                ),
              child:
               Text('HEIGHT ',
              style: DECORATION.copyWith(
                letterSpacing: 10.0,

              ),
              ),
              ),

            Row(
               crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                 Container(
                
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.only(
                  top:10.0,
                  left: 5.0
                ),
              child:
                Text('$heightpersonne',
                style:kNUMBERTEXTSTYLE,
                )),
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
                  Expanded(
                    child:CardReusable(
                      cardChild: Column(
                        children: <Widget>[
                           Container(
                
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.only(
                  top:10.0,
                  left: 5.0
                ),
              child:Text('Weight',
              style: DECORATION,
              ),
             ),
              Text('$wazen',
              style:kNUMBERTEXTSTYLE,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                RoundIconButton(
                   onpressed: (){
                    this.setState(()=>wazen++);
                  },
                  icon:FontAwesomeIcons.plus
                ),
                Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
                ),
                RoundIconButton(
                  onpressed: (){
                    this.setState(()=>wazen--);
                  },
                  icon: FontAwesomeIcons.minus,
                ),
                 Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.width*0.1),
                ),

              ],
              ),
                        ],
                      ),
                    colour: ACTIVECARDCOLOR,),
                  ),
                  Expanded(child: CardReusable(
                    cardChild: Column(
                        children: <Widget>[
                           Container(
                
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.only(
                  top:10.0,
                  left: 5.0
                ),
              child:Text('Age',
              style: DECORATION,
              ),
             ),
              Text('$age',
              style:kNUMBERTEXTSTYLE,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                
                RoundIconButton(
                   onpressed: (){
                    this.setState(()=>age++);
                  },
                  icon:FontAwesomeIcons.plus
                ),
                Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.01),
                ),
                RoundIconButton(
                  onpressed: (){
                    this.setState(()=>age--);
                  },
                  icon: FontAwesomeIcons.minus,
                ),
                 Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.width*0.1),
                ),

              ],
              ),
                        ],
                      ),





                    
                    colour: ACTIVECARDCOLOR
                  ),
                  ),
                ],
              ), 
              
              ),
              
            
             GestureDetector(
               onTap: (){

                 CalculatorBMI bmi = CalculatorBMI(
                   height: heightpersonne,
                   weight: wazen.toDouble(),
                   
                 );
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultWidget(
                   bmiResult: bmi.getBMI(),
                   interpretation: bmi.getInterpretation(),
                   resultText: bmi.getResult(),
                 )));
               },
                child:Container(
                
                alignment: Alignment.center,
                child: Text('CALCULATE',
                style: DECORATION.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade800
                ),),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(
                top:10.0,
                bottom: 5.0
             ),
             width: double.infinity,
             height: MediaQuery.of(context).size.height*0.08,
            ),
            ),
          ],
        ),
      ),
    );
  }
  }

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key key ,this.icon , this.onpressed}) : super(key: key);
  final IconData icon ; 
  final Function onpressed  ; 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      disabledElevation: 10.0,
      child: Icon(icon,
      color: Colors.red.shade500,) ,
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        width:50.0,
        height: 50.0,
      ),
      elevation: 15.0,
      shape: CircleBorder(),
      onPressed: onpressed, 
      
      );
  }
}

  
  
