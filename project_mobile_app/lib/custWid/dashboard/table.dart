import 'package:flutter/material.dart';

class MyStatistikaPenduduk extends StatefulWidget {
  @override
  _MyStatistikaPendudukState createState() => _MyStatistikaPendudukState();
}

class _MyStatistikaPendudukState extends State<MyStatistikaPenduduk> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowHeight: 40,
      horizontalMargin: 10.0,
      columnSpacing: MediaQuery.of(context).size.width * 1 / 9,
      columns: <DataColumn>[
        DataColumn(
            label: Text(
          "Dusun",
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )),
        DataColumn(
            label: Text("Pria",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        DataColumn(
            label: Text("Wanita",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        DataColumn(
            label: Text("Jumlah",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            numeric: true)
      ],
      rows: <DataRow>[
        DataRow(
          selected: true,
          cells: [
            DataCell(Text("Dusun Durian")),
            DataCell(Text("500")),
            DataCell(Text("600")),
            DataCell(Text("1100"))
          ],
        ),
        DataRow(
          selected: false,
          cells: [
            DataCell(Text("Dusun Rambutan")),
            DataCell(Text("400")),
            DataCell(Text("450")),
            DataCell(Text("850"))
          ],
        ),
        DataRow(
          selected: true,
          cells: [
            DataCell(Text("Dusun Manggis")),
            DataCell(Text("600")),
            DataCell(Text("700")),
            DataCell(Text("1300"))
          ],
        ),
        DataRow(
          selected: false,
          cells: [
            DataCell(Text("Dusun Kelapa")),
            DataCell(Text("555")),
            DataCell(Text("600")),
            DataCell(Text("1155"))
          ],
        )
      ],
    );
  }
}
