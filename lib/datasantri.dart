import 'package:flutter/material.dart';

class DataSantri extends StatelessWidget {
  const DataSantri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        color: Colors.green,
        child: Row(children: [
          Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              margin: EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ini Foto Santri",
                  style: TextStyle(fontSize: 10),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              margin: EdgeInsets.only(left: 10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ini Data Santri",
                  style: TextStyle(fontSize: 10),
                ),
              )),
        ]),
      ),
    );
  }
}
