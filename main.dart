import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  List<String> agama=["select","india","pakistan","usa","uk","canada","swizerland"];
  String _agama="select";

  String _jk="";
  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerNama2= new TextEditingController();
  TextEditingController controllerEmail= new TextEditingController();
  TextEditingController controllerPhon= new TextEditingController();
   TextEditingController controllerStat= new TextEditingController();
   TextEditingController controllerCity= new TextEditingController();
   TextEditingController controllerBir= new TextEditingController();

   void _pilihJk(String value){
    setState((){
      _jk=value;
    });
  }

  void  _pilihAgama(String value){
    setState((){
      _agama=value;
    });
  }

  void Popupdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("UserName: ${controllerNama.text+controllerNama2.text}"),
            new Text("Email: ${controllerEmail.text}"),
            new Text("Phone Number : ${controllerPhon.text}"),
            new Text("Country : $_agama"),
            new Text("State:${controllerStat.text} "),
            new Text("city:${controllerCity.text} "),
            new Text("Gender:$_jk "),
            new Text("Birth Date:${controllerBir.text} "),
            new RaisedButton(
              child: new Text("OK"),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
    showDialog(context: context,child:alertDialog );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Parul university",style: new TextStyle(
          color: Colors.indigo,
        ),),
        backgroundColor: Colors.redAccent,

      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10.0),
            child:  new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                      hintText: "Enter your first name",
                      labelText: "First Name",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller: controllerNama2,
                  decoration: new InputDecoration(
                      hintText: "Enter your last name",
                      labelText: "Last Name",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller:  controllerEmail,
                  decoration: new InputDecoration(
                      hintText: "Enter your Email Address",
                      labelText: "Email Adress",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                ),

                 new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller:  controllerPhon,
                  decoration: new InputDecoration(
                      hintText: "Enter your number",
                      labelText: "Mobile nmuber",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",

                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                  obscureText: true,
                ),

                 new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(

                      hintText: "repeat password",
                      labelText: "Confirmed password",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                  obscureText: true,
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                      labelText: "Gender",
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 5.0),),

                new RadioListTile(
                  value: "male",
                  title: new Text(" male"),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihJk(value);
                  },
                  activeColor: Colors.red,
                ),

                new RadioListTile(
                  value: "female",
                  title: new Text("Female "),
                  groupValue: _jk,
                  onChanged: (String value){
                    _pilihJk(value);
                  },
                  activeColor: Colors.red,
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0),),


                new Row(
                  children: <Widget>[
                    new Text("country ",style: new TextStyle(fontSize: 18.0,color: Colors.blue),),
                    new DropdownButton(
                      onChanged: (String value){
                        _pilihAgama(value);
                      },
                      value: _agama,
                      items: agama.map((String value){
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller:  controllerStat,
                  decoration: new InputDecoration(
                      hintText: "Enter your State",
                      labelText: "State",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
               new TextField(
                  controller:  controllerCity,
                  decoration: new InputDecoration(
                      hintText: "Enter your city name",
                      labelText: "City",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )

                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller:  controllerBir,
                  decoration: new InputDecoration(
                      hintText: "Enter your birth date",
                      labelText: "Birth Date",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0)
                      )
                  ),
                ),

                new RaisedButton(
                  child: new Text("OK"),
                  color: Colors.red,
                  onPressed: (){Popupdata();},
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
