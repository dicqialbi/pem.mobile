import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/berita.dart';

class berita4 extends StatefulWidget {
  berita4();

  @override
  _berita4State createState() => _berita4State();
}

class _berita4State extends State<berita4> {
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
                child: Text('Pasca tindak lanjut rekomendasi kemendagri, 13 OPD pemkab jember kosong.',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black87)),
              ),
              Image.asset("images/opd.png", height: 250,),
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
                child: Text("JEMBER, KOMPAS.com – Pengembalian 367 pejabat di lingkungan Pemerintah Kabupaten Jember membuat 13 kepala Organisasi Perangkat Daerah ( OPD) kosong.",
                    style:
                    TextStyle(fontSize: 11,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}


