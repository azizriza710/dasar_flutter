import 'package:flutter/material.dart';
import 'package:dasar_flutter/main.dart';
import 'package:dasar_flutter/datasantri.dart';

class ListSantri extends StatelessWidget {
  const ListSantri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[600],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: buildAppBar(),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, position) {
              return DataSantri();
            }),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Madrasah"),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.mosque),
        tooltip: "Ini Menu",
      ),
      backgroundColor: Colors.cyan[600],
      elevation: 0,
      actions: [Icon(Icons.search)],
    );
  }
}
