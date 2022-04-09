import 'package:flutter/material.dart';
import 'package:dasar_flutter/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  const BelajarNavBar({Key? key}) : super(key: key);

  @override
  State<BelajarNavBar> createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[600],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: buildAppBar(),
      ),
      body: Body(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Container(
          height: 80,
          decoration: BoxDecoration(color: Colors.cyan[600], boxShadow: [
            BoxShadow(
                offset: Offset(0, -8),
                blurRadius: 35,
                color: Colors.cyan.withOpacity(0.30))
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.book),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.star_outlined),
                color: Colors.white,
              )
            ],
          ),
        ),
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
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          tooltip: 'Search',
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Ini Search")));
          },
        ),
      ],
    );
  }
}
