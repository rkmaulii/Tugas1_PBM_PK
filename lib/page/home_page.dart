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
  dynamic _keterangan  =0.0;
  String _perhitungan= '';
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
              "Selamat datang $username ",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
            child: Text(
              _perhitungan.toString(),
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          SizedBox(
            child: Text(
              _keterangan.toString(),
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          TextFormField(
            controller: _tinggi,
            style: TextStyle(color: Colors.white),
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
            style: TextStyle(color: Colors.white),
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
                   if (hasil<18.5){
                   _keterangan='Berat badan anda kurang';
                   _perhitungan  = hasil.toStringAsFixed(1);
                   } 
                   else if (hasil>=18.5 && hasil <24.9){
                    _keterangan='Badan anda Normal';
                    _perhitungan = hasil.toStringAsFixed(1);
                  }
                   else if (hasil>=25.0 && hasil <29.9){
                    _keterangan='Berat badan ada kelebihan';
                    _perhitungan = hasil.toStringAsFixed(1);
                  }
                   else {
                    _keterangan='Obesitas';
                    _perhitungan = hasil.toStringAsFixed(1);
                  }
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
