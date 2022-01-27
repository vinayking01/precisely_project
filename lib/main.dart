import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:preciselyproject/date.dart';




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


class MyForm extends State<Myform1> {
  TextEditingController dateinput = TextEditingController();
  int _value = 1;
  bool _checkBoxValue = false;
  String dropdownvalue = 'Martial Status';
  var items =  ["Martial Status",'Married',"Unmarried","Separated","Divorced","Widowed"];

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff462d0f),Color(0xffd8892e),])),
        child :
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Form Builder",
      home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                // child: Image(image: AssetImage('assets/appbarimage.png'),),
              ),
              titleSpacing: 0,
              title: Column(
                children: [
                  Row(
                    children: [
                      GradientText(
                        text: 'Precisel',
                        colors: const <Color>[
                          Color(0xffff9724),
                          Color(0xffffb90b)
                        ],
                        style: const TextStyle(fontSize: 33.0,fontWeight: FontWeight.bold,letterSpacing: 0.02),
                      ),
                      GradientText(
                        text: 'y',
                        colors: const <Color>[
                          Color(0xffff9724),
                          Color(0xffffb90b)
                        ],
                        style: const TextStyle(fontSize: 33.0,fontWeight: FontWeight.bold,letterSpacing: 0.02),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4,),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("FLY ABROAD",
                      style: TextStyle(
                          height: 0,
                          letterSpacing: 4,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffb90b)),),
                  )
                ],
              ),
              actions: <Widget>[
                GestureDetector(
                    onTap: (){},child: const Icon(Icons.facebook)),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){},child: const Icon(Icons.camera)),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: (){},child: const Icon(Icons.search)),
                const SizedBox(width: 10,),
              ],
              elevation: 0,
              backgroundColor: Colors.transparent
          ),


        body: SingleChildScrollView(
        child:Center(child: Container(
            child:
            Form(child: Column(children: <Widget>[
                Container(
                  child: Text("\n PRECISELY",style: TextStyle(fontStyle: FontStyle.italic,
                      color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25),),
                ),
              Container(
                child:
                Center(child:Text('\n"Preparing students for international mobility programs"',textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.w300, fontSize: 12),),
              )),

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
                            onChanged: (value) {
                              setState(() {
                                _checkBoxValue = value;
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
                Container(
                  child :
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownButton(

                        value: dropdownvalue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items:items.map((String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(items)
                          );
                        }
                        ).toList(),
                        onChanged: (String newValue){
                          setState(() { dropdownvalue = newValue;});
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // TextButton(
                      //   child: const Text("Prev"),
                      //   style: TextButton.styleFrom(
                      //     primary: Colors.black,
                      //     backgroundColor: Colors.blueGrey,
                      //     onSurface: Colors.grey,
                      //     side: const BorderSide(
                      //       width: 1,
                      //       color: Colors.black12,
                      //     ),
                      //   ),
                      //   onPressed: ()=>{
                      //     print("prev Pressed")
                      //   },
                      // ),
                      // const SizedBox(
                      //   width: 3.0,
                      // ),
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
          ),),
      ),
    ),
    );
  }
}
