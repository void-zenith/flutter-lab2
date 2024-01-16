import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Zenith Rajbhandari Lab2')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  String currentDate = " ";

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    void submitButton() {
      setState(() {
        currentDate = DateTime.now().toString();
      });
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(currentDate,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
              )),
          const Text('Enter Names:',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
              )),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Your Name',
            ),
          ),
          const Divider(
            height: 33,
            thickness: 1,
            indent: 40,
            endIndent: 40,
            color: Color.fromARGB(255, 113, 63, 63),
          ),
          ElevatedButton(
            style: style,
            onPressed: submitButton,
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
