import 'package:flutter/material.dart'; //Fungsi yang dipanggil saat main.dart dijalankan

void main() { //perintah main
  runApp(MyApp()); //perintah menjalankan kelas MyApp
}
class MyApp extends StatelessWidget { //kelas yang menggunakan widget dinamis
  @override //mengembalikan sebuah objek widget
  Widget build(BuildContext context) { //
    return MaterialApp( //widget yang membungkus beberapa widget yang menggunakan tema material design
      debugShowCheckedModeBanner: false, //fungsi untuk menampilkan dan menghilangkan banner build sebelah kanan atas
      theme: ThemeData(
        primarySwatch: Colors.deepOrange //mengatur warna tema
      ),
      home: Scaffold( //widget untuk struktur dasar material design
        appBar: AppBar(title: Text("Sustainable Cities and Communities - 11"),), //memberi nama AppBar sesuai yang dimasukan
        body: Container( //membuat wadah konten yang akan isi nanti
          child: Card( //membuat widget baru
            child: Column( //widget column menentukan posisi widget secara vertikal
              mainAxisSize: MainAxisSize.min, //mengatur kartu dibagian paling atas
              children: <Widget>[ //membuat widget untuk diisikan teks
                const ListTile(
                  title: Text("Eksa Yani Izzulhaq"),
                  subtitle: Text("182410102031"),
                ),
                const ListTile(
                  title: Text("Muhammad Dicqi Alfan Habibi"),
                  subtitle: Text("182410102041"),
                ),
                const ListTile(
                  title: Text("Amarthia Dinar Kusminda"),
                  subtitle: Text("182410102085"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
