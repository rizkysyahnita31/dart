import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NitaApp()));
}

class NitaApp extends StatefulWidget {
  _NitaAppState createState() => _NitaAppState();
}

class _NitaAppState extends State<NitaApp> {
  //Declaration
  List<Karyawan> karyawan;

  void initState() {
    super.initState();
    karyawan = Karyawan.getKaryawan();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syahnita Rizky Utami - 6SIA4'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Karyawan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Nama Karyawan')),
            DataColumn(label: Text('Posisi')),
          ],
          rows: karyawan
              .map(
                (karyawan) => DataRow(cells: [
                  DataCell(Text(karyawan.id)),
                  DataCell(Text(karyawan.nama)),
                  DataCell(Text(karyawan.posisi)),
                ]),
              )
              .toList(),
        ),
      ]),
    );
  }
}

class Karyawan {
  //Attribut
  String id;
  String nama;
  String posisi;
  //Constructor
  Karyawan({this.id, this.nama, this.posisi});
  //Data List
  static List<Karyawan> getKaryawan() {
    return <Karyawan>[
      Karyawan(
          id: "2018020384", nama: " Nyai", posisi: "Sistem Informasi"),
      Karyawan(
          id: "2018021027", nama: "owo", posisi: "Sistem Komputer"),
      Karyawan(
          id: "2018020348",
          nama: "hihih",
          posisi: "Manajemen Informasi"),
    ];
  }
}
