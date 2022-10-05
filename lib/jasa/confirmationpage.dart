import 'package:flutter/material.dart';
import 'package:jasaui/jasa/jasa_view.dart';

import 'waktu.dart';
import 'mobil.dart';
import 'paketcuci.dart';

class Konfirmasi extends StatefulWidget {
  final String? userId;
  final String? cucicar;
  final String? waktu;
  final String? mobil;
  const Konfirmasi(
      {Key? key, this.userId, this.cucicar, this.mobil, this.waktu})
      : super(key: key);

  @override
  State<Konfirmasi> createState() => _KonfirmasiState();
}

class _KonfirmasiState extends State<Konfirmasi> {
  // initializing some values
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuci Mobil"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => JasaView()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
          height: size.height / 1,
          width: size.width / 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Konfirmasi Pesanan Anda",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 5, 0, 4),
                    child: Text(
                      "Nama",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 5, 0, 4),
                    child: Text(
                      "Data",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 5, 0, 4),
                    child: Text(
                      "Tempat Cuci",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(53, 5, 0, 4),
                    child: Text(
                      "Alamat",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 5, 0, 4),
                    child: Text(
                      "Waktu Booking",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 5, 0, 4),
                    child: Text(
                      "Waktu",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 5, 0, 4),
                    child: Text(
                      "Jenis Mobil",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(57, 5, 0, 4),
                    child: Text(
                      "Data",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total ',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'SF-Pro-Text-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(200, 5, 0, 4),
                    child: Text(
                      "Data",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Text-Bold',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: size.width / 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF1B2DCB),
                          padding: const EdgeInsets.all(14.0),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const Konfirmasi(),
                            ),
                          );
                        },
                        child: const Text(
                          'Bayar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
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
