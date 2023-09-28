import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:schoolapp/screens/mydrawer.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/highschool.jpg"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50.0),
                  )),
            ),
            title: const Text(
              "DASHBOARD",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.white),
                    Shadow(
                        // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.white),
                    Shadow(
                        // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.white),
                    Shadow(
                        // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.white),
                  ]),
            ),
          )),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo.png"),
            opacity: 0.1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 10.0, right: 10.0, top: 10.0, bottom: 0),
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  //color: const Color.fromARGB(255, 190, 189, 189),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                //padding: const EdgeInsets.all(5),
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.blueAccent,
                        ),
                        borderRadius:
                            BorderRadius.circular(20.0), //<-- SEE HERE
                      ),
                      elevation: 20,
                      color: Colors.blueAccent,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Total Number of \nStudents Enrolled',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 61, 104)),
                            ),
                            Text(
                              '786',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.pinkAccent,
                        ),
                        borderRadius:
                            BorderRadius.circular(20.0), //<-- SEE HERE
                      ),
                      elevation: 20,
                      color: Colors.pinkAccent,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              'Present Level',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 104, 6, 38)),
                            ),
                            Text(
                              'SS2A',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.greenAccent,
                    ),
                    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                  ),
                  elevation: 20,
                  color: Colors.teal,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Text(
                              'Announcement ',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.speaker_notes,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.greenAccent,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'This is to notify all the students that the school will be going on mid-term break '
                          'on February 22 and resumed back on February 26, 2023.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          Icon(
                            Icons.person_add,
                            color: Colors.pink,
                          ),
                          Text(
                            ' Newest Student: CHARLES PRECIOUS',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                          ),
                          Text(
                            ' Total Number in class: 65',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          Icon(
                            Icons.checklist,
                            color: Colors.pink,
                          ),
                          Text(
                            ' Number of times you\'re present this term: 95',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      const Divider(),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          Icon(
                            Icons.money,
                            color: Colors.pink,
                          ),
                          Text(
                            ' Paid this term school fees: YES',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
