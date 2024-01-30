import 'package:flutter/material.dart';

class GridItem {
  final String imageUrl;
  final String text;

  GridItem(this.imageUrl, this.text);
}

class GridExample extends StatelessWidget {
  GridExample({super.key});

  final List<GridItem> itemList = [
    GridItem("https://img.freepik.com/premium-vector/partai-pdi_588787-87.jpg",
        "Partai Banteng"),
    GridItem(
        "https://asset.kompas.com/crops/DL8QxFaCbhL_SIUztGMEAAzCbHE=/0x329:1280x1182/750x500/data/photo/2021/12/13/61b7524cb3a97.png",
        "Partai Kabah"),
    GridItem(
        "https://intanfauzi.com/asset/2018/10/Logo-PAN-01.jpg", "Partai Joged"),
    GridItem(
        "https://fpkskotasemarang.id/wp-content/uploads/2019/08/download-2.png",
        "Partai Islamic"),
    GridItem(
        "https://yt3.googleusercontent.com/1M6hZd-xmiE8ZfdRQ4Cnr4MBn_J7lrK0bta_fuKRQIQSe7nJKcU-Qy1bRsCv7Hm0u9oWFrFvKmw=s900-c-k-c0x00ffffff-no-rj",
        "Partai Dinasti"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(itemList[index].imageUrl),
                  fit: BoxFit.cover)),
          child: Text(
            (itemList[index].text),
          ),
        );
      },
    );
  }
}
