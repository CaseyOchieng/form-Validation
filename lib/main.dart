// ignore_for_file: unused_field, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ignore: duplicate_ignore
class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  // This key is used to uniquely identify the Form widget
  final GlobalKey<FormState> _signInkey = GlobalKey<FormState>();
  // This key is used to uniquely identify the Form widget
  final RegExp emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      // This key is used to uniquely identify the Form widget
      key: _signInkey,
      // This key is used to uniquely identify the Form widget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Login to Ark Youth Church",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailcontroller,
              decoration: const InputDecoration(hintText: "Email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter some text";
                } else if (!emailValid.hasMatch(value)) {
                  return "Please enter a valid email";
                } else {
                  return null;
                }
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 0),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30)),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: _passwordcontroller,
              obscureText: true,
              decoration: const InputDecoration(hintText: "password"),
//----------------------------------------
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter some text";
                } else if (value.length < 6) {
                  return "Password must be at least 6 characters";
                }
                return null;
              },
            ),
            //The first function, validatePassword, takes a string as an argument and returns either null or the message "Please enter some text".
//---------------------------------------
          ),
          ElevatedButton(
              onPressed: () {
                if (_signInkey.currentState!.validate()) {
                  debugPrint("Email: ${_emailcontroller.text}");
                  debugPrint("Password: ${_passwordcontroller.text}");
                }
              },
              child: const Text("Submit")),
        ],
      ),
    ));
  }
}
 // Code Explanation
// The code is trying to import a package called "flutter". The code is using the keyword const to declare a variable that will be used in this class. The value of the variable is "MyApp" and it's being declared with the keyword super. The code is calling a function called runApp, which takes one parameter: an instance of MyApp. This function calls another function called const MyApp(). This widget is the root of your application.
// The code is a snippet of code that will be compiled into the following DLL: .text:00000134 .text:00000134 .text:00000134 .text:00000134 void MyApp::build(BuildContext context) { }
// The code in the createState() method creates a new state that extends State<MyHomePage> called _MyHomePageState. The code in this class has two TextEditingController objects, one for email and one for password.
// The code is the implementation of a state machine that will be used to manage the data flow for MyHomePage. The createState() method creates an instance of State<MyHomePage> and initializes it with an empty constructor. The _MyHomePageState class extends State<MyHomePage> and has two TextEditingController instances, _emailcontroller and _passwordcontroller.
// The code starts by defining a key called _signInkey that is used to uniquely identify the Form widget. The code then defines a RegExp object called emailValid, which is used to validate an email address. Next, the build method of the Widget class creates a Scaffold with two children: one for displaying text and another for displaying an input field. The first child displays "Sign in" while the second child displays an input field where users can enter their email address. Finally, when this form is submitted, it will send its state information to our server using AJAX requests so we can process it there.
// The code is used to uniquely identify the Form widget. The code is used to uniquely identify the Form widget.