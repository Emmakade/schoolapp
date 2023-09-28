import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:schoolapp/constant/my_color.dart';
import 'package:schoolapp/screens/dashboard.dart';
import 'package:schoolapp/screens/forgotpass.dart';
import 'package:schoolapp/screens/login.dart';
import 'package:schoolapp/services/functions.dart';
import 'package:schoolapp/services/myelevate.dart';
import 'package:schoolapp/validate/validators.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  static const String _title = 'Registration';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        //appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(
          onSubmit: (String value) {},
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.onSubmit}) : super(key: key);
  final ValueChanged<String> onSubmit;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController admissionNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var text = '';

  bool _isSubmitted = false;
  bool _isLoading = false;
  bool passwordVisible = true;
  late ScaffoldState scaffoldState;

  @override
  void dispose() {
    passwordController.dispose();
    admissionNoController.dispose();
    emailController.dispose();
    super.dispose();
  }

  bool hasInternet = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return WillPopScope(
      onWillPop: (() async {
        Functions(ctx: context).showMyDialog('Do you want to close this app?',
            'STOP!', MyColor.error400, Icons.block);
        return false;
      }),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo.png"),
            opacity: 0.1,
            fit: BoxFit.contain,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.only(
                left: 35.0, right: 35.0, top: 15.0, bottom: 0),
            //padding: const EdgeInsets.symmetric(horizontal: 15),

            child: ListView(
              children: <Widget>[
                const SizedBox(
                  height: 80,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/logo.png",
                      width: 180,
                      height: 110,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: TextField(
                    controller: admissionNoController,
                    decoration: InputDecoration(
                      // border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueAccent)),
                      prefixIcon: const Icon(Icons.person,
                          color: Colors.grey, size: 24),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      labelText: 'Admission No',
                      errorText: _isSubmitted
                          ? Validator().errorText(
                              admissionNoController.value.text, 'Admission No')
                          : null,
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueAccent)),
                      prefixIcon:
                          const Icon(Icons.mail, color: Colors.grey, size: 24),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      labelText: 'Email',
                      errorText: _isSubmitted
                          ? Validator()
                              .errorEmail(admissionNoController.value.text)
                          : null,
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  child: TextField(
                    obscureText: passwordVisible,
                    controller: passwordController,
                    decoration: InputDecoration(
                      // border: const OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueAccent)),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 24,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 2),
                      labelText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(13),
                          child: Icon(
                              passwordVisible
                                  ? Icons.remove_red_eye_sharp
                                  : const FaIcon(FontAwesomeIcons.eyeSlash)
                                      .icon,
                              color: Colors.grey,
                              size: 20),
                        ),
                      ),
                      errorText: _isSubmitted
                          ? Validator().errorText(
                              passwordController.value.text, 'Password')
                          : null,
                    ),
                    onChanged: (_) => setState(() => {}),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    child: MyElevatedButton(
                  width: double.infinity,
                  onPressed: passwordController.value.text.isNotEmpty &&
                          emailController.value.text.isNotEmpty &&
                          admissionNoController.value.text.isNotEmpty
                      ? _handleLogin
                      : null,
                  borderRadius: BorderRadius.circular(20),
                  child: const Text('Register'),
                )
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //       backgroundColor: const Color(0xFF1A0984),
                    //       disabledForegroundColor:
                    //           const Color(0xFF1A0984).withOpacity(0.38),
                    //       disabledBackgroundColor:
                    //           const Color(0xFF1A0984).withOpacity(0.12)),
                    //   onPressed: passwordController.value.text.isNotEmpty &&
                    //           admissionNoController.value.text.isNotEmpty
                    //       ? _handleLogin
                    //       : null,
                    //   child: const Text('Register'),
                    // ),
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Already have an accoutn?'),
                    _isLoading
                        ? roll
                        : TextButton(
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 76, 141, 220),
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginPage()));
                            },
                          ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            )),
      ),
    );
  }

  var roll = Container(
    padding: const EdgeInsets.only(right: 7),
    child: const SpinKitCircle(
      color: Color(0xFF1a0984),
      size: 40.0,
    ),
  );

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
      _isSubmitted = true;
    });

    String? errorUser =
        Validator().errorText(admissionNoController.value.text, 'Admission No');
    String? errorEmail = Validator().errorEmail(emailController.value.text);
    String? errorText =
        Validator().errorText(passwordController.value.text, 'Password');
    if (errorUser == null && errorEmail == null && errorText == null) {
      widget.onSubmit(passwordController.value.text);
      widget.onSubmit(admissionNoController.value.text);
      widget.onSubmit(emailController.value.text);

      var data = {
        'admission_no': admissionNoController.text,
        'email': emailController.text,
        'password': passwordController.text,
      };
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Dashboard()));
    }

    setState(() {
      _isLoading = false;
    });
  }
}
