import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsCard extends StatelessWidget {
  NewsCard(this.judul, this.isi, this.assetImage);
  var judul;
  var isi;
  AssetImage assetImage;

  @override
  Widget build(BuildContext context) { 
    return Card(
        elevation: 0.5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: assetImage,
            maxRadius: 25,
          ),
          title: Text(
            judul,
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 12,color: Colors.black87),
          ),
          subtitle: Text(isi,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 11),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ));
  }
}
