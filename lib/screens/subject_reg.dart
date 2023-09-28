import 'package:flutter/material.dart';
import 'package:schoolapp/services/functions.dart';
import 'package:schoolapp/services/myelevate.dart';

ValueNotifier<int> counter = ValueNotifier<int>(1);

class SubjectRegistration extends StatelessWidget {
  SubjectRegistration({super.key});

  //String? info;
  _incrementCounter() {
    var cou = counter.value++;
    return cou.toString();
  }

  final bluestyle = const TextStyle(color: Color(0xFF1A0984));

  final blackstyle = const TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (() async {
          counter = ValueNotifier<int>(1);
          return true;
        }),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text(
                'REGISTER SUBJECT',
                style: TextStyle(color: Color(0xFF1a0984)),
              ),
              iconTheme: const IconThemeData(color: Color(0xFF1a0984)),
              centerTitle: true,
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                  opacity: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 1.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 120,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(color: Colors.pink),
                      child: const Text(
                        "REGISTER SUBJECT",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: const Text('First Term Subject Registration',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                              columnSpacing: 10,
                              columns: _createColumns(),
                              rows: _row()),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, right: 20),
                                child: const Text('Maximum Subject:')),
                            Container(
                              alignment: Alignment.center,
                              child: const Text('11'),
                            ),
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                            height: 60.0,
                            child: MyElevatedButton(
                                onPressed: (() {}),
                                borderRadius: BorderRadius.circular(20),
                                child: const Text('Register'))),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )));
  }

  // toggle(code, deptId, unit) {
  List<DataColumn> _createColumns() {
    return [
      DataColumn(
          label: Text(
            '#',
            style: blackstyle,
          ),
          tooltip: 'Serial Number'),
      DataColumn(
          label: Text('AVAILABLE', style: blackstyle),
          tooltip: 'Available Course(s)'),
      DataColumn(
          label: Text('ADD/REMOVE', style: blackstyle),
          tooltip: 'Action to be taken'),
    ];
  }

  List<DataRow> _row() {
    return [
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('ENGLISH LANGUAGE', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Mathematics', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Physics', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Chemistry', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Biology', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Geography', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Commerce', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Account', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Lit-In-ENglish', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Government', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Agricultural Science', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Civic Education', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Computer Studies', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
      DataRow(cells: [
        DataCell(Text(_incrementCounter(), style: bluestyle)),
        DataCell(Text('Christian Religious Study', style: bluestyle)),
        DataCell(Functions().toggle()),
      ]),
    ];
  }
}
