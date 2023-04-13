import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/login_page.dart';

String username = "";
String password = "";

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : Buat tampilan register
      body: register(),
    );
  }
}

class register extends StatelessWidget {
  // const register({super.key});

  final TextEditingController test1 = TextEditingController();
  final TextEditingController test2 = TextEditingController();

  void penampungan() {
    final String username1 = test1.text;
    final String password1 = test1.text;
    username = username1;
    password = password1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              padding: const EdgeInsets.all(8),
              color: Color(0xffcff5e7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                        child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.black,
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Selamat datang dihalaman Register",
                    style: TextStyle(fontSize: 20, color: Color(0xff0b2447)),
                  ),
                  Text(
                    "Silahkan lengkapi data dibawah ini untuk mendapatkan akun",
                    style: TextStyle(fontSize: 13, color: Color(0xff0b2447)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: test1,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 25,
                          color: Colors.black,
                        ),
                        hintText: "masukkan email",
                        hintStyle: TextStyle(color: Colors.blue),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Color(0xff0b2447))),
                  ),
                  TextFormField(
                    controller: test2,
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 25,
                          color: Colors.black,
                        ),
                        hintText: "masukkan password",
                        hintStyle: TextStyle(color: Colors.blue),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Color(0xff0b2447))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Color(0xff0b2447),
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                        splashColor: Color(0xfffcd900),
                        onTap: () {
                          if (test1.text != '' && test2.text != '') {
                            penampungan();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(
                                      password: password, username: username),
                                ));
                          }
                        },
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
