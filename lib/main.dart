import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  bool? newValue = false;
  @override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
        backgroundColor: Colors.greenAccent[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ), //IconButton
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child : SingleChildScrollView(
          child: Column(
            children: <Widget>[
            Form(
            key: _formKey,
            child: Column(
                children: <Widget>[
                  Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title*',
                      hintText: 'Enter your Title',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name*',
                      hintText: 'Enter Your FirstName',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Last Name*',
                      hintText: 'Enter Your LastName',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Street and number*',
                      hintText: 'Enter Your Street and number',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Postal Code*',
                      hintText: 'Enter Your Postal Code',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'place*',
                      hintText: 'Enter Your place',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Telephone (mobile or landline)*',
                      hintText: 'Enter Your Telephone (mobile or landline)',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email*',
                      hintText: 'Enter Your Email*',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TextField(
                        decoration: InputDecoration(// The validator receives the text that the user has entered.decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Remarks*',
                      hintText: 'Enter the Remarks',
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("I agree that the VERT.ES and their sections contact me using the above data.I have taken note of the day protection declarationand can modify or revoke my consent at any time."),
                  value: true,
                  onChanged: (bool? newValue) {},
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                //TextStyle
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
             ]
            ),
          ),
        ]
     ),
  ),
      ),
     );
   }
}







