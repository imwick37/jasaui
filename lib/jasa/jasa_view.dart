import 'package:flutter/material.dart';
import 'package:jasaui/jasa/confirmationpage.dart';

import 'waktu.dart';
import 'mobil.dart';
import 'paketcuci.dart';

class JasaView extends StatefulWidget {
  final String? userId;
  const JasaView({Key? key, this.userId}) : super(key: key);

  @override
  State<JasaView> createState() => _JasaViewState();
}

class _JasaViewState extends State<JasaView> {
  // initializing some values

  // picking the image

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
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
              height: size.height / 3.4,
              width: size.width / 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Lokasi Terdekat",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              height: size.height / 4,
              width: size.width / 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cuci",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SF-Pro-Text-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CuciCar(),
                  SizedBox(height: 5),
                  Text(
                    "Waktu Booking",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Waktu(),
                  SizedBox(height: 5),
                  Text(
                    "Pilih Jenis Mobil",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Mobil(),
                  SizedBox(height: 5),
                  Text(
                    "Nama Pemilik Mobil",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SF-Pro-Text-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Data",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SF-Pro-Text-Bold',
                    ),
                  ),
                  SizedBox(height: 8),
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Konfirmasi()));
                            },
                            child: const Text(
                              'Selanjutnya',
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
        ],
      ),
    );
  }
}
