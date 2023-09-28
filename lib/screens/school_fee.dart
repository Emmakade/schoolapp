import 'package:flutter/material.dart';
import 'package:schoolapp/services/myelevate.dart';

class SchoolFees extends StatelessWidget {
  SchoolFees({Key? key}) : super(key: key);

  int id = 0;
  final bluestyle = const TextStyle(color: Color(0xFF1A0984));
  final blackstyle = const TextStyle(color: Color.fromARGB(255, 20, 7, 7));
  final redstyle = const TextStyle(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "PAY SCHOOL FEES",
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
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 4.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 100,
                        height: 65,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(color: Colors.blueAccent),
                      child: const Text(
                        "FULL PAYMENT",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columns: const [
                              DataColumn(label: Text('Full Names:')),
                              DataColumn(
                                  label: Text('ADELANI,ADEDIRE SMART',
                                      style:
                                          TextStyle(color: Color(0xFF1a0984))))
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text('Class:')),
                                DataCell(Text('SSS2',
                                    style: TextStyle(color: Color(0xFF1a0984))))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Option:')),
                                DataCell(Text('Science Option',
                                    style: TextStyle(color: Color(0xFF1a0984))))
                              ]),
                              DataRow(cells: [
                                DataCell(Text('Ref No:')),
                                DataCell(Text('zLweGXsdfOeRTQdknt',
                                    style: TextStyle(color: Color(0xFF1a0984))))
                              ]),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                            columnSpacing: 10,
                            columns: _createListColumns(),
                            rows: _row(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  'Total Fees:',
                                  style: redstyle,
                                )),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '₦50,000',
                                style: redstyle,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  'Transaction Fees:',
                                  style: redstyle,
                                )),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '₦350',
                                style: redstyle,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    top: 5, bottom: 5, right: 20),
                                child: Text(
                                  'Grand Total:',
                                  style: redstyle,
                                )),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                '₦50,350',
                                style: redstyle,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: MyElevatedButton(
                              onPressed: (() {}),
                              borderRadius: BorderRadius.circular(20),
                              child: const Text('Pay School Fee')),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  List<DataColumn> _createListColumns() {
    return const [DataColumn(label: Text('')), DataColumn(label: Text(''))];
  }

  List<DataRow> _row() {
    return [
      const DataRow(
          cells: [DataCell(Text('School fees')), DataCell(Text('50,000'))])
    ];
  }
}
