import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool male = false;
  bool female = false;
  TextEditingController _height = TextEditingController();
  TextEditingController _width = TextEditingController();
  String yourBMI="0.0";
  String _MyText="";
  ShapeBorder changeColorMale()
  {
    if(male)return Border.all(color: Colors.blue , width: 5.0);
    else return Border.all(color: Colors.white);
  }
  ShapeBorder changeColorFemale()
  {
    if(female)return Border.all(color: Colors.blue , width: 5.0);
    else return Border.all(color: Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text("BMI Calculator"),
        backgroundColor: Colors.grey[800],
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings),
          ),
        ],
      ),
      body:Padding(
        padding:  EdgeInsets.only(left: 20.0 , right: 20.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0 , bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ButtonTheme(
                        //height: 50.0,
                        buttonColor: Colors.grey,
                        shape: changeColorFemale(),
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              female = true;
                              male = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network(
                                'https://armscontrolcenter.org/wp-content/uploads/2018/03/2000px-Pink_Venus_symbol.svg_.png',
                                 //fit: BoxFit.fill,
                                  //height: 50.0,
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: ButtonTheme(
                        //height: 50.0,
                        buttonColor: Colors.grey,
                        shape: changeColorMale(),
                        child: RaisedButton(
                          onPressed: (){
                            setState(() {
                              male = true;
                              female = false;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network(
                              'https://wineandcheesedoodles.files.wordpress.com/2013/02/male_symbol.png',
                             // fit: BoxFit.fill,
                              //height: 50.0,
                            ),
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[800],
                ),
                child: Column(
                  children: [
                      SizedBox(height: 8.0,),
                      Text(
                          "Your height in M",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),

                      ),
                      SizedBox(height: 20.0,),
                      TextField(
                        controller: _height,
                        decoration: InputDecoration(
                          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                          focusedBorder: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.white,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[800],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 8.0,),
                    Text(
                      "Your Weight in Kg",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    SizedBox(height: 20.0,),
                    TextField(
                      controller: _width,
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        focusedBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.white),
                  //color: Colors.grey[900],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0,10.0,8.0,10.0),
                    child: Column(
                      children: [
                        Text(
                            "Your BMI",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                        ),
                        SizedBox(height: 20.0,),
                        Text(
                          "${yourBMI}",
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                  "${_MyText}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        double h = double.parse(_height.text);
                        double w = double.parse(_width.text);
                        double x =w/(h*h);
                        String newString;
                        if(x>=18.5 && x<=24.9)newString="Normal";
                        else if(x>=25 && x<=29.9)newString="Overweight";
                        else if(x>=30 && x<=34.9)newString="Obese";
                        else if(x>=35 && x<=39.9)newString="Severely Obese";
                        else if(x >= 40)newString="Morbid Obese";
                        else newString="";

                        setState(() {
                          yourBMI= x.toStringAsFixed(2);
                          _MyText=newString;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey[600]),
                      ),
                      child: Text(
                          "Calculate",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}


