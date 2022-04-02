import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          leading: Icon(Icons.home),
          title: Text("Belajar Dasar"),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search, color: Colors.red)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                image: NetworkImage(
                    'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/02/12/2805017866.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 10,
              ),
              borderRadius: BorderRadius.circular(20)),
          height: 200,
          margin: EdgeInsets.only(top: 20),
        ));
  }
}
