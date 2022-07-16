import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  ListView1({Key? key}) : super(key: key);

  final List<Map<String, dynamic>>_games=[
      {
        "image": "https://img.redbull.com/images/c_crop,w_1050,h_525,x_0,y_0,f_auto,q_auto/c_scale,w_1200/redbullcom/2019/12/16/eeenufntgpom7r141hev/mejor-nintendo-juegos-decada",
        "name" : "Mario"
      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7OSr0uM42s8IBFYP7rMy7iA0UBY16s3Pmwg&usqp=CAU",
        "name":"Fortnite"

      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvKxq-5VpScmxopeD6OBk8tWNZ_rINqH-WVA&usqp=CAU",
        "name":"Crysis"
      },
      {
        "image":"https://img.unocero.com/2020/07/mejores-videojuegos-de-mundo-abierto-1200x600.jpeg",
        "name":"Zelda"
      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu_dSZVgd_gZK68tHxGkBJvTVCur3qLwHl4A&usqp=CAU",
        "name":"Apex"
      },
      {
        "image":"https://www.geekmi.news/__export/1654805637527/sites/debate/img/2022/06/09/disexo_x19x.jpg_759710130.jpg",
        "name":"LOL"
      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo_iVaTtNhs7tngj8SlvUfbZG0Q1mU0MgHJw&usqp=CAU",
        "name":"Spiderman"
      },
      {
        "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj9quSwnB5eQsdHkBs9ekCH1xa1E3AImBhWQ&usqp=CAU",
        "name":"Among us"
      },
      {
        "image":"dhttps://cdn.milenio.com/uploads/media/2020/07/22/el-videojuego-saldra-a-finales.jpg",
        "name":"Halo"
      },
      {
      "image":"https://esporters.today/__export/1630799605834/sites/gammers/img/2021/09/04/cod_mobile_main_1570103396815.jpg_759710130.jpg",
      "name":"COD"
    }
  ];
  
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    appBar: AppBar(
      title: const Text("Juegos"),
    ),
    body: ListView.builder(
      itemCount:_games.length, 
      itemBuilder:(context, index){
        return ListTile(
            leading: CircleAvatar(backgroundImage: Image.network(_games[index]["image"]!).image,),
            title: Text(_games[index]["name"]!),
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
              title: Text(_games[index]["name"]!),
              content: Text('Seleccionaste el juego ${_games[index]["name"]}'),
              actions: <Widget>[
              TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      
        );
      }
      )
  );
  }
}

