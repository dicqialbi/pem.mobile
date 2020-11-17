import 'package:flutter/material.dart';
import 'package:project_mobile_app/custWid/berita.dart';

class berita2 extends StatefulWidget {
  berita2();

  @override
  _berita2State createState() => _berita2State();
}

class _berita2State extends State<berita2> {
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
                child: Text('Demo di Kedubes Prancis Bubar, Jalan MH Thamrin ke Bundaran HI Tersendat',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black87)),
              ),
              Image.asset("images/demo.jpg", height: 250,),
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
                child: Text("Pantauan detikcom, Jumat (6/11/2020), satu mobil komando dengan spanduk Pemuda Organization of Islamic Cooperation (OIC Youth) Indonesia datang dari arah Patung Kuda Arjuna Wiwaha ke Jalan MH Thamrin, tepatnya di dekat halte TransJakarta Sarinah sekitar pukul 13.19 WIB. Mobil komando ini datang tanpa diikuti massa aksi.",
                    style:
                    TextStyle(fontSize: 11,color: Colors.black87)),
              )
            ],
          ),
        )
    );
  }
}


