import 'package:flutter/material.dart';
import 'package:project/views/detail_user.dart';


class ListProvider {
  static Widget showList(List<dynamic> data, BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ListTile(
              
              title: Text(
                data[index].nombre!,
              ),
              subtitle: Text(
                data[index].apellido!,
              ),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index].image!)),
                  
                  
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailView_User(
                              registro: data[index],
                            )));
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
            )
          ],
        );
      },
    );
  }
}
