import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextField and Button",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Flutter Exerecise"),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  _MywidgetState createState() => _MywidgetState();
}

class _MywidgetState extends State<MyWidget> {
  TextEditingController _textEditingController = TextEditingController();
  bool _hasInputError = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              _hasInputError = value.length < 5;
            },
            //to control
            controller: _textEditingController,
            //the length of input text
            maxLength: 10,
            //input type zero to 9
            inputFormatters: [WhitelistingTextInputFormatter(RegExp("[0-9]"))],
            maxLines: null,
            //input ရိုက်ထည့်မယ် စားသားတွေကို ကန့်သတ်ဖို့
            keyboardType: TextInputType.visiblePassword,
            //textbox ကို အလှဆင်ဖို့အတွက်
            decoration: InputDecoration(

                //to input error
                errorText: _hasInputError ? "Input correctly" : null,
                //to show label text
                labelText: "နာမည်",
                //cursorရဲ့အရှေ့မှာ ပြဖို့အတွက် text ကို
                prefixText: "Name-",
                //user ကို ဘယ်လိုရိုက်ပါဆိုပြီး optionsပေးချင်းလို့
                helperText: "Please enter your name",
                //show count number under the text box
                counterText: _textEditingController.text.length.toString(),
                //to give hint text
                hintText: 'Enter a search term',
                //insert icon to the textbox at the end
                suffixIcon: Icon(Icons.airport_shuttle)),
          ),
          RaisedButton(
            child: Text("Ok"),
          ),
        ],
      ),
    );
  }
}
