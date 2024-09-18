import 'package:flutter/material.dart';
import 'package:practice_2/style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _firstNumTEController = TextEditingController();
  final TextEditingController _secondNumTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double _result = 0;

  void _onTapAddButton() {
    if (_formKey.currentState!.validate()) {
      double FirstNumber = double.tryParse(_firstNumTEController.text) ?? 0;
      double SecondNumber = double.tryParse(_secondNumTEController.text) ?? 0;
      setState(() {
        _result = FirstNumber + SecondNumber; // Calculate and update result
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum App"),
        centerTitle: false,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Sum is = $_result",
                style: HeadTextStyle(),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _firstNumTEController,
                decoration: AppInputStyle("First Number"),
                keyboardType: TextInputType.number,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a value';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _secondNumTEController,
                decoration: AppInputStyle("Second Number"),
                keyboardType: TextInputType.number,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a value';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: _onTapAddButton,
                  style: AppButtonStyle(),
                  child: Text("Add"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstNumTEController.dispose();
    _secondNumTEController.dispose();
    super.dispose();
  }
}
