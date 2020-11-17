import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/berita.dart';

class berita1 extends StatefulWidget {
  berita1();

  @override
  _berita1State createState() => _berita1State();
}

class _berita1State extends State<berita1> {
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.deepOrange,
                onTap: (){
                  Navigator.pop(context,
                  MaterialPageRoute(builder: (context){
                    return Berita();
                      }));
                },
                child: Icon(
                Icons.arrow_back,color: Colors.white,size: 30,
              ),
              ),
              Text("Berita",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
              textAlign: TextAlign.center,)
            ],
          ),
        ),
       body: Column(
         children:<Widget> [
                 Padding(
                   padding: const EdgeInsets.all(12),
                   child: Text('Pemerintah Desa Suka Maju Bagi Bagi Sembako',
                     style:
                     TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black87)),
                 ),
                 Image.asset("images/news.jpeg"),
                 ListTile(
                   leading: CircleAvatar(
                     backgroundImage: AssetImage("images/group.jpg"),
                   ),
                   title: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text('KELOMPOK N',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                       Text('18 November 2020',style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold,color: Colors.grey)),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: Text("Presiden Joko Widodo (Jokowi) mengatakan pembagian paket sembako dan Kartu Prakerja akan dilakukan oleh Menteri Sosial Juliari P. Batubara. Pembagian ini sudah mengikuti ketentuan tambah anggaran bagi masing-masing program.",
                       style:
                       TextStyle(fontSize: 11,color: Colors.black87)),
                 )
               ],
             ),
           )
    );
  }
}


