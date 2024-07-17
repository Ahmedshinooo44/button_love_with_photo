import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

// ignore: must_be_immutable, use_key_in_widget_constructors

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myNumber = 0;
  Color btnColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              btnColor = Colors.pink;
              myNumber++;
              
            });
          },
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //بتخلي الصوره قابله للضغط عليها وعمل اي امر مطلوب منها
                      print("image is pressed");
                    },
                    child: const Image(
                      image: AssetImage('images/photo.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '$myNumber ',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    btnColor = Colors.pink;
                    myNumber++;
                    print('button is pressed');
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: btnColor,
                  size: 35,
                ))
          ],
        ),
      ),
    );
  }
}
