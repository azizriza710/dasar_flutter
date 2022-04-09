import 'package:flutter/material.dart';
import 'package:dasar_flutter/santri.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(),
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => ListSantri());
                  Navigator.push(context, route);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Colors.cyan[600],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Data Santri",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.cyan[600],
                          borderRadius: BorderRadius.circular(20))))
            ],
          ),
        ));
  }
}
