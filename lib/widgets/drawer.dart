import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              accountName: Text("Md.Faruqe Hasan"),
              accountEmail: Text("faruqehassan7@gmail.com"),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.amber,
              size: 35,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            subtitle: Text("let's detailse"),
            onTap: () {},
          ),
          Divider(
            color: Colors.amberAccent,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.amber,
              size: 35,
            ),
            title: Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            subtitle: Text("let's detailse"),
            onTap: () {},
          ),
          Divider(
            color: Colors.amberAccent,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.photo,
              color: Colors.amber,
              size: 35,
            ),
            title: Text(
              "Gellary",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            subtitle: Text("let's detailse"),
            onTap: () {},
          ),
          Divider(
            color: Colors.amberAccent,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.phone,
              color: Colors.amber,
              size: 35,
            ),
            title: Text(
              "Contact",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            subtitle: Text("let's detailse"),
            onTap: () {},
          ),
          Divider(
            color: Colors.amberAccent,
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.amber,
              size: 35,
            ),
            title: Text(
              "Setting",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            subtitle: Text("let's detailse"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
