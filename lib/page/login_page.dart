import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});
  final String username;
  final String password;
  LoginPage({required this.username, required this.password});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : bikin tampilan login
      body: LogIn(),
    );
  }
}

// class LogIn extends StatefulWidget {

//   @override
//   LogInState createState() => LogInState();
// }

// class LogInState extends State<LogIn> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class LogIn extends StatelessWidget {
  final TextEditingController test1 = TextEditingController();
  final TextEditingController test2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              padding: const EdgeInsets.all(8),
              color: Color(0xff0b2447),
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
                    "Selamat datang dihalaman login",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: test1,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(Icons.person, size: 25),
                        hintText: "masukkan email",
                        hintStyle: TextStyle(color: Colors.blue),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextFormField(
                    controller: test2,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        prefixIcon: Icon(Icons.lock, size: 25),
                        hintText: "masukkan password",
                        hintStyle: TextStyle(color: Colors.blue),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Color(0xff035397),
                    elevation: 5,
                    child: Container(
                      height: 50,
                      child: InkWell(
                        splashColor: Color(0xfffcd900),
                        onTap: () {
                          if (test1.text == username &&
                              test2.text == password) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(username: test1.text),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: const Text(
                                  'password atau username anda salah!'),
                            ));
                          }
                        },
                        child: Center(
                          child: Text(
                            "Login",
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
