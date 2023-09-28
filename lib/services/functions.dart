import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Functions {
  Functions({this.ctx});
  BuildContext? ctx;

  Future<void> showMyDialog(msg, title, col, ico) async {
    return showDialog<void>(
      context: ctx!,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  msg,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Icon(
                  ico,
                  color: col,
                  size: 80.0,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                // Navigator.pushReplacement(
                //     context, MaterialPageRoute(builder: (context) => redirect));
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('EXIT'),
              onPressed: () {
                SystemNavigator.pop(animated: true);
              },
            ),
          ],
        );
      },
    );
  }

  showMsg(msg, mcolor) async {
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {},
      ),
      backgroundColor: mcolor,
    );
    ScaffoldMessenger.of(ctx!).showSnackBar(snackBar);
  }

  Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('127.0.0.1:8000');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  //late MyCourseRegProvider courseRegProvider;

  toggle() {
    //courseRegProvider = Provider.of<MyCourseRegProvider>(ctx!);
    return ToggleSwitch(
      minWidth: 17.0,
      cornerRadius: 25.0,
      minHeight: 19,
      activeBgColors: const [
        [Colors.black26],
        [Color(0xFF1a0984)]
      ],
      activeFgColor: const Color(0xFF1a0984),
      inactiveBgColor: Colors.blue[100],
      inactiveFgColor: const Color(0xFF1a0984),
      initialLabelIndex: 0,
      totalSwitches: 2,
      radiusStyle: true,
      onToggle: (index) {
        if (index == 1) {
          //courseRegProvider.addCourse(code, deptId, unit);
        } else if (index == 0) {
          //courseRegProvider.removeCourse(code, deptId);
        }
      },
    );
  }
}
