import 'package:flutter/material.dart';

void main() {
  runApp(Tugas());
}

class Tugas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [



              // Container abu-abu
              Container(
                width: 500,
                height: 400,
                color: Colors.grey[300],
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Foto dalam bentuk lingkaran
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ), // Opsional: bingkai lingkaran
                        image: DecorationImage(
                          image: AssetImage('assets/images/gue.jpg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            offset: Offset(5, 5), // bayangan di bawah
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),



                    // Text informasi
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(""),
                        Text("Nama: Muhamamd Nurifqi Praulan"),
                        Text("NIM: 22104410112"),
                        Text("Kelas: 6 MM"),
                        Text("Matakuliah: Pengembangan Aplikasi Perangkat Bergerak"),
                        Text("Framework: Flutter"),
                      ],
                    ),
                  ],
                ),
              ),



              // Text dengan Stack
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 500,
                  height: 50,
                  padding: EdgeInsets.all(8),
                  color: Colors.lightBlue,
                  child: Text(
                    'INI ADALAH SEBUAH INFORMASI',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
