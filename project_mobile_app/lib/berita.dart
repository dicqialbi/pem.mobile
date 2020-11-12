import 'package:flutter/material.dart';

class Berita extends StatefulWidget {
  Berita();

  @override
  _BeritaState createState() => _BeritaState();
}

class _BeritaState extends State<Berita> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.fromLTRB(0, 20, 300, 0),
            child: Text(
              "Berita",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.end,
            )),
        Container(
          //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          // height: 1000,
          decoration: BoxDecoration(
            //border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white60,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ],
          ),
          child: Column(
            children: <Widget>[
              newsCard(),
              newsCard(),
              newsCard(),
              newsCard(),
              newsCard()
            ],
          ),
        )
      ],
    );
  }

  Card newsCard() {
    return Card(
        elevation: 0.5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/news.jpeg"),
            maxRadius: 25,
          ),
          title: Text(
            "Subsidi Beras dari Pemerintah",
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          subtitle: Text(
              "Untuk membantu meringankan beban masyarakat terdampak Covid-19 pemerintah berikan 10.000 subsidi beras gratis kepada masyarakat",
              style: TextStyle(fontStyle: FontStyle.italic),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ));
  }
}
