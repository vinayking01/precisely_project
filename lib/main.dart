import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:preciselyproject/date.dart';


void main()
{
  runApp(Myform1());
}

class Myform1 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MyForm();
  }
}


class MyForm extends State<Myform1> {
  TextEditingController dateinput = TextEditingController();
  int _value = 1;
  bool _checkBoxValue = false;

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Form Builder",
      home: Scaffold(
          appBar: AppBar(title: Text("MY FORM")),
          body: Center
            (child: Container(
            child: Form(
              child: Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(5),
                    child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "Enter Your Name",
                          border: OutlineInputBorder(
                              borderRadius:BorderRadius.circular(2.0),
                          )
                        )
                    )
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    child: DOB(),
                ),
                Container(
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Select Your Gender',
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value as int;
                              });
                            },
                          ),
                          const Text("Male"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value as int;
                              });
                            },
                          ),
                          const Text("Female"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            value: 3,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value as int;
                              });
                            },
                          ),
                          const Text("Other"),
                        ],
                      ),
                      // may bew work
                      Row(
                        children: [
                          Checkbox(
                            value: _checkBoxValue,
                            onChanged: (bool? value) {
                              setState(() {
                                _checkBoxValue = value as bool;
                              });
                            },
                          ),
                          const Text(
                              "Please accept our Terms and conditions"
                          ),
                        ],
                      ),
                      // ttll then here may be work
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text("Prev"),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.blueGrey,
                          onSurface: Colors.grey,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ),
                        ),
                        onPressed: ()=>{
                          print("prev Pressed")
                        },
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      TextButton(
                        child: const Text("Next"),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.yellow,
                          onSurface: Colors.grey,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ),
                        ),
                        onPressed: ()=>{
                          print("Next Pressed")
                        },
                      ),
                    ],
                  ),
                ),
              ],
              ),
            ),
          ),
          ),
      ),
    );
  }
}
