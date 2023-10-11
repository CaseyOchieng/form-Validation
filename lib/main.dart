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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Form(
          // This key is used to uniquely identify the Form widget
          key: _signInkey,
          // This key is used to uniquely identify the Form widget

          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailcontroller,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: const InputDecoration(hintText: "password"),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter some text";
                  } else if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
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
