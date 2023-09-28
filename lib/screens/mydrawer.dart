import 'package:flutter/material.dart';
import 'package:schoolapp/screens/login.dart';
import 'package:schoolapp/screens/profile.dart';
import 'package:schoolapp/screens/school_fee.dart';
import 'package:schoolapp/screens/subject_reg.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/smart.jpg'),
              ),
              accountName: const Text('Adelani, Adedire Smart'),
              accountEmail: const Text('adediresmart09@gmail.com')),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Dashboard"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => StdProfile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text("School Fees"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SchoolFees()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_add),
            title: const Text("Subject Registration"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SubjectRegistration()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
