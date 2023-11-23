import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20))),
      child: ListView(
        children: [
          const DrawerHeader(
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.purple),
                  currentAccountPicture: Icon(Icons.person_rounded),
                  accountName: Text("Kajol Roy"),
                  accountEmail: Text("shikajol@gmail.com"))),
          ListTile(
            onTap: () {},
            horizontalTitleGap: 0,
            leading: const Icon(Icons.home),
            title: const Text("Home"),
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          const ListTile(
            horizontalTitleGap: 0,
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          )
        ],
      ),
    );
  }
}
