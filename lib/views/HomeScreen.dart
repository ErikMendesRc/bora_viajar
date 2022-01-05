import 'package:bora_viajar/example_data.dart';
import 'package:bora_viajar/utils/border_box_widget.dart';
import 'package:bora_viajar/utils/costants.dart';
import 'package:bora_viajar/utils/filter_options.dart';
import 'package:bora_viajar/utils/real_estate_item.dart';
import 'package:bora_viajar/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                     BorderBox(
                      child: Icon(Icons.menu, color: COLOR_BLACK),
                      height: 50, 
                      width: 50),
                     BorderBox(
                      child: Icon(Icons.settings, color: COLOR_BLACK),  
                      height: 50, 
                      width: 50),
                  ]
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text("Eaí! Bora Viajá?", style: themeData.textTheme.bodyText2,),
              ),
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
              child: TextField(
                style: TextStyle(color: COLOR_GREY),
                cursorColor: COLOR_GREY,
                decoration: InputDecoration(
                  hintText: "Buscar Excurções",
                  hintStyle: const TextStyle(color: COLOR_BLACK),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: COLOR_GREY,
                  ),
                ),
              )
              ),
              Padding(
                padding: sidePadding,
                child: const Divider(
                  height:padding,
                  color: COLOR_GREY,
                )
              ),
              addVerticalSpace(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    "Perto de você","Litoral", "Interior", "Com vagas"]
                    .map((filter) => FilterOptions(text: filter)).toList(),
                ),
              ),
              addVerticalSpace(10),
              Expanded(
                child: Padding(
                  padding: sidePadding,
                  child: ListView.builder(
                    itemCount: RE_DATA.length,
                    itemBuilder: (context, index){
                      return RealEstateItem(itemData: RE_DATA[index]);
                    },
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}