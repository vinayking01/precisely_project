import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DOB extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DOB();
  }
}

class _DOB extends State<DOB>{
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child:Center(
                child:TextField(
                  controller: dateinput, //editing controller of this TextField
                  decoration: InputDecoration(
                    //icon of text field
                      labelText: "Enter Date" ,
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(2.0),
                      )
                  ),
                  readOnly: true,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateinput.text = formattedDate; //set output date to TextField value.
                      });

                  },
                )
            )
        );
  }
}
