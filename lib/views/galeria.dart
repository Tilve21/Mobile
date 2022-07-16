import 'package:flutter/material.dart';

// ignore: camel_case_types
class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  static const List<Map<String, String>> galery = [
    {
      "image":
          "https://st3.depositphotos.com/12731704/18109/i/600/depositphotos_181096246-stock-photo-young-couple-with-laptop-and.jpg",
      "Comentarios": "Excelente Gracias por todo!!!!!"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx27iBmyBc0YaMEagWonciK1l8iTKueBD9QvVvuJPTdLZK0xlQxEu6DUVbXjQRqmuZlGs&usqp=CAU",
      "Comentarios": "EL mejor Regalo"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWEuMcx5ujKh6FbhkOLbQiqQN92S7-7vY5PcPKlBJYv44Fii-jJQrcG8RWMUBXo_iVqdU&usqp=CAU",
      "Comentarios": "Gracias !!!"
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/81jFB34iz+L._AC_SL1500_.jpg",
      "Comentarios": "Como siempre lo soñaba !!"
    },
    {
      "image":
          "https://st4.depositphotos.com/1037987/23734/i/600/depositphotos_237346462-stock-photo-dad-and-daughter-sit-on.jpg",
      "Comentarios": "Mi Sueño Hecho Realidad Nuestra casa!!"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCdVEKj9Se2kXmvn1pqcHLVSvcIEvq2_rJIQYegiJnq56mtYaXd5H7-NP_9Q-GrN3oPGM&usqp=CAU",
      "Comentarios": "Muy Alegre con mi carro"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: galery.length,
      itemBuilder: (_, index) {
        return miCardImage(index);
      },
    ));
  }

  miCardImage(index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(galery[index]['image']!),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(galery[index]['Comentarios']!),
          ),
        ],
      ),
    );
  }
}
