import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/edit/nama.dart';
import 'package:page_transition/page_transition.dart';

class MyAkun extends StatefulWidget {
  @override
  _MyAkunState createState() => _MyAkunState();
}

class _MyAkunState extends State<MyAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("SIMPEDAS",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w900,
                      fontSize: 25))
            ]),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              height: 150,
              child: Image(image: AssetImage("images/assets_logo.png"))),
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(1, 1))
                ],
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DataTable(
                  horizontalMargin: 10.0,
                  columnSpacing: MediaQuery.of(context).size.width * 1 / 15,
                  columns: <DataColumn>[
                    DataColumn(
                        label: Text(
                          "Data Pribadi",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        numeric: true),
                    DataColumn(
                      label: Text(""),
                    )
                  ],
                  rows: <DataRow>[
                    DataRow(
                      selected: true,
                      cells: [
                        DataCell(Text("Nama Lengkap :"), placeholder: true),
                        DataCell(Text("Agus Susilo Hadi"),
                            showEditIcon: true, onTap:() {
                              Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.scale,
                                        child: MyName()));
                            })
                      ],
                    ),
                    DataRow(
                      selected: false,
                      cells: [
                        DataCell(Text("Tanggal Lahir :"), placeholder: true),
                        DataCell(Text("17 Agustus 1998"),
                            showEditIcon: true, onTap: () {})
                      ],
                    ),
                    DataRow(selected: true, cells: [
                      DataCell(Text("Alamat :"), placeholder: true),
                      DataCell(
                          Text("Jl. Suanan Kalijaga no 125, Dusun Rambutan"),
                          showEditIcon: true,
                          onTap: () {})
                    ]),
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                DataTable(
                  horizontalMargin: 10.0,
                  columnSpacing: MediaQuery.of(context).size.width * 1 / 15,
                  columns: <DataColumn>[
                    DataColumn(
                        label: Text(
                          "Informasi Akun",
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        numeric: true),
                    DataColumn(
                      label: Text(""),
                    )
                  ],
                  rows: <DataRow>[
                    DataRow(
                      selected: true,
                      cells: [
                        DataCell(Text("Nama Pengguna :"), placeholder: true),
                        DataCell(Text("Agus Susilo"),
                            showEditIcon: true, onTap: () {})
                      ],
                    ),
                    DataRow(
                      selected: false,
                      cells: [
                        DataCell(Text("Email :"), placeholder: true),
                        DataCell(Text("Agussusilo123@gmail.com"),
                            showEditIcon: true, onTap: () {})
                      ],
                    ),
                    DataRow(selected: true, cells: [
                      DataCell(Text("Kata Sandi :"), placeholder: true),
                      DataCell(Text("*******"),
                          showEditIcon: true, onTap: () {})
                    ]),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
