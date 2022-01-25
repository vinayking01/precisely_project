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
  final _formkey = GlobalKey<FormBuilderState>();
  TextEditingController dateinput = TextEditingController();

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
                    padding: EdgeInsets.all(10),
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
                    padding: EdgeInsets.all(10),
                    child: DOB(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
