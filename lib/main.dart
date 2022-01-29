import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:preciselyproject/date.dart';


void main() {
  runApp(Myform1());
}

class Myform1 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyForm();
  }
}

class DOB extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DOB();
  }
}

class _DOB extends State<DOB> {
  TextEditingController dateinput = TextEditingController();

  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
        child: TextField(
          controller: dateinput, //editing controller of this TextField
          decoration: InputDecoration(
            //icon of text field
              fillColor: Color(0x6B4E3223),
              filled: true,
              labelText: "Enter Date",
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
              )
          ),
          readOnly: true, //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101)
            );
            print(
                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            print(
                formattedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              dateinput.text =
                  formattedDate; //set output date to TextField value.
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
  var items = [
    "Martial Status",
    'Married',
    "Unmarried",
    "Separated",
    "Divorced",
    "Widowed"
  ];

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
              colors: [Color(0xff462d0f), Color(0xffd8892e),])),
      child:
      MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: "Form Builder",
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                child: Image(image: AssetImage('images/symbol.png'),),
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
                        style: const TextStyle(fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.02),
                      ),
                      GradientText(
                        text: 'y',
                        colors: const <Color>[
                          Color(0xffff9724),
                          Color(0xffffb90b)
                        ],
                        style: const TextStyle(fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.02),
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
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffb90b)),),
                  )
                ],
              ),
              actions: <Widget>[
                GestureDetector(
                    onTap: () {}, child: const Icon(Icons.facebook)),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: () {}, child: const Icon(Icons.camera)),
                const SizedBox(width: 10,),
                GestureDetector(
                    onTap: () {}, child: const Icon(Icons.search)),
                const SizedBox(width: 10,),
              ],
              elevation: 0,
              backgroundColor: Colors.transparent
          ),


          body: SingleChildScrollView(
            child: Center(child: Container(
              child:
              Form(child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 13, 0, 0),
                    margin: EdgeInsets.all(0),
                    child:
                    Text("PRECISELY", style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 22),),
                  ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: EdgeInsets.all(0),
                    child:
                    Center(child: Text(
                      '\n"Preparing students for international mobility programs"',
                      textAlign: TextAlign.center, style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 11),),
                    )
                ),
                Container(
                  child: Center(
                    child: Text(
                      "\n- Yours Truly",
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 of 7",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              ' Please fill with your details',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                          child: TextFormField(
                              decoration: new InputDecoration(
                                  fillColor: Color(0x6B4E3223),
                                  filled: true,
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 10.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2.0),

                                  )
                              )
                          )
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 3, 0, 3),
                        child: DOB(),
                      ),
                      Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Select Your Gender', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                decoration: BoxDecoration(
                                  color: Color(0x6B4E3223),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child:
                                Row(
                                  children: <Widget>[
                                    Radio(
                                      value: 1,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value as int;
                                        });
                                      },
                                    ),
                                    const Text(
                                        "Male",
                                        style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.w500,)
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 4, 0, 0),
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Color(0x6B4E3223),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value as int;
                                        });
                                      },
                                    ),
                                    const Text(
                                        "Female",
                                        style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.w500,)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 4, 0, 0),

                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Color(0x6B4E3223),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Radio(
                                      value: 3,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = value as int;
                                        });
                                      },
                                    ),
                                    const Text(
                                        "Other",
                                        style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.w500,)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // may bew work
                            // Container(
                            //   child :
                            //   Column(
                            //     mainAxisSize: MainAxisSize.max,
                            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //     children: [
                            //       DropdownButton(
                            //         value: dropdownvalue,
                            //         icon: Icon(Icons.keyboard_arrow_down),
                            //         items:items.map((String items) {
                            //           return DropdownMenuItem(
                            //               value: items,
                            //               child: Text(items,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,))
                            //           );
                            //         }
                            //         ).toList(),
                            //         onChanged: (String newValue){
                            //           setState(() { dropdownvalue = newValue;});
                            //         },
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 4, 0, 0),
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: Color(0x6B4E3223),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      DropdownButton(

                                        value: dropdownvalue,
                                        icon:
                                        Icon(Icons.keyboard_arrow_down),
                                        items: items.map(
                                              (String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(
                                                items, style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                                            );
                                          },
                                        ).toList(),
                                        onChanged: (String newValue) {
                                          setState(
                                                () {
                                              dropdownvalue = newValue;
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                                const Text("Please accept our Terms and conditions", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,
                                fontSize: 10),
                                ),
                              ],
                            ),
                            // ttll then here may be work
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
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
                                  width: 0.5,
                                  color: Colors.black12,
                                ),
                              ),
                              onPressed: () =>
                              {
                                print("Next Pressed")
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: InkWell(
                            child: new Text(
                              'Precisely Website', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            fontSize: 10),),
                            onTap: () =>
                                launch('https://www.precisely.co.in/'),
                          ),
                        ),
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
        ),),
    );
  }
}
