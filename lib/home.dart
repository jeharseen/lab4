import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:lab4/main.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

String groupCar="";
bool Checked = false;
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Input Widgets"),
      ) ,
      body:Column(
        children: [
          const Text("TextFromField#1 Simple TextFormField"),
          TextFormField(),
          const Text("TextFromField#2 password"),
          TextFormField(
            obscureText: true,
          ),
          const Text("TextFromField #3 Decoration"),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: "this is LabelText", 
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                color: Color.fromARGB(255, 247, 189, 0),
              ),
              ),
            ),
          ),
          const Text("RadioListTitle #1 Simple"),
          RadioListTile(
            title:const Text(' title 1'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'title 1',
            groupValue: groupCar,
            onChanged: (value){
              setState(() {
                groupCar = value!;
              });
              print(groupCar);
            }
          ),
          RadioListTile(
            title: Text('title 2'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'title 2',
            groupValue: groupCar,
            onChanged: (value) {
              setState(() {
                groupValue: value!;
              });
              print(groupCar);
            },
          ),
          Text(groupCar),

          RadioListTile(
            title: Text('title 2'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'title 2',
            groupValue: groupCar,
            onChanged: (value) {
              setState(() {
                groupValue: value!;
              });
              print(groupCar);
            },
          ),
          Text(groupCar),

          Text('CheckboxListTitle #1'),
          CheckboxListTile(
            title: Text('Libary Implementation'),
            value: Checked,
            onChanged: ((value) {
              setState(() {
                Checked = value!;
              });
            }
            ),
          ),
          ],
     ) ,
    );
  }
}