import 'package:bora_viajar/utils/border_box_widget.dart';
import 'package:bora_viajar/utils/costants.dart';
import 'package:bora_viajar/utils/widget_functions.dart';
import 'package:flutter/material.dart';

import 'format_currency.dart';

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({ Key? key, this.itemData }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(itemData["image"])),
              const Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                child: Icon(Icons.favorite_border, color: COLOR_BLACK),
              )),
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text("${itemData["cidade"]}",style: themeData.textTheme.headline6),
              addHorizontalSpace(10),
              Text(
                "R"+"${formatCurrency(itemData["preco"])}",
                style: themeData.textTheme.headline6,
              ),
            ],
          ),
          addVerticalSpace(10),
          Text(
            "${itemData["vagasrestantes"]} vagas disponiveis / ${itemData["hostel"]}",
            style: themeData.textTheme.bodyText2
          )
        ],
      ),
      
    );
  }
}