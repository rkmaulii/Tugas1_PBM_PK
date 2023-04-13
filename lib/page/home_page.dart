import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';

class HomePage extends StatefulWidget {
  final String username;
  HomePage({required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double hasil = 0;

  void hitungBMI() {
    double tinggi = double.parse(_tinggi.text);
    double berat = double.parse(_berat.text);
    hasil = berat / ((tinggi / 100) * (tinggi / 100));
  }

  final TextEditingController _tinggi = TextEditingController();
  final TextEditingController _berat = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //TODO : bikin tampilan UI
        body: Container(
      padding: const EdgeInsets.all(8),
      color: Color(0xff0b2447),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            child: Text(
              "selamat datang $username",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 80,
            child: Text(
              hasil.toString(),
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          TextFormField(
            controller: _tinggi,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
                hintText: "masukkan tinggi badan",
                hintStyle: TextStyle(color: Colors.blue),
                labelText: "Tinggi (cm)",
                labelStyle: TextStyle(color: Colors.blueAccent)),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _berat,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)),
                hintText: "masukkan berat badan",
                hintStyle: TextStyle(color: Colors.blue),
                labelText: "Berat Badan (KG)",
                labelStyle: TextStyle(color: Colors.blueAccent)),
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
                  setState(() {
                    hitungBMI();
                  });
                },
                child: Center(
                  child: Text(
                    "Hitung",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
