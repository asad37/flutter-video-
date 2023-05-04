import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SideNav extends StatelessWidget {
  const SideNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.amber,
                  maxRadius: 50.0,
                  minRadius: 20.0,
                  child: Image.asset("assets/images/logo.png")),
              accountName: Text("Asad Waqas"),
              accountEmail: Text("asadkambo2021@gmail.com")),
          Card(
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favourite"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.child_friendly_sharp),
              title: Text("Friends"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.request_quote),
              title: Text("Requesting"),
            ),
          ),
          Divider(
            height: 5,
            thickness: 2,
            color: Color.fromARGB(255, 164, 129, 199),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.other_houses),
              title: Text("Others"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favourite"),
            ),
          ),
        ],
      )),
    );
  }
}
