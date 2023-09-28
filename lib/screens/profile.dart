import 'package:flutter/material.dart';

class StdProfile extends StatelessWidget {
  StdProfile({Key? key}) : super(key: key);
  static const String _title = 'STUDENT PROFILE';

  String? fullName, passportGet, matric;
  //late MyProfileProvider profileProvider;

  @override
  Widget build(BuildContext context) {
    //profileProvider = Provider.of<MyProfileProvider>(context);
    var color2 = Colors.lightBlue;
    return Scaffold(
      backgroundColor: color2,
      appBar: AppBar(
        centerTitle: true,
        title: Text(StdProfile._title),
        shadowColor: Colors.transparent,
        backgroundColor: color2,
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              opacity: 0.1,
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(1),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 65,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/smart.jpg',
                            ),
                            radius: 60,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "ADELANI, ADEDIRE SMART",
                          style: TextStyle(
                              color: Color(0xFF1A0984),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'SCH/2023/031',
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(columnSpacing: 10, columns: const [
                      DataColumn(
                          label: Text(
                        'Last Name',
                        style: TextStyle(color: Colors.white),
                      )),
                      DataColumn(
                          label: Text('ADELANI',
                              style: TextStyle(color: Colors.white)))
                    ], rows: const [
                      DataRow(cells: [
                        DataCell(Text('First Name:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text('ADEDIRE',
                            style: TextStyle(color: Colors.white)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Middle Name:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text('SMART',
                            style: TextStyle(color: Colors.white)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Option:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text('SCIENCE',
                            style: TextStyle(color: Colors.white)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Class:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text(
                          'SSS2A',
                          style: TextStyle(color: Colors.white),
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Phone:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text('09063436212',
                            style: TextStyle(color: Colors.white)))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Email:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text(
                          'adediresmart09@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Address:',
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text('Akala Junction, Akobo-Ojuurin, Ibadan',
                            style: TextStyle(color: Colors.white)))
                      ]),
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ))),
    );
  }
}
