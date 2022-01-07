import 'package:bora_viajar/utils/border_box_widget.dart';
import 'package:bora_viajar/utils/widget_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoItem extends StatelessWidget {
  final dynamic itemData;
  const InfoItem({Key? key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final TextStyle? headline5 = Theme.of(context).textTheme.headline5;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: const [
              ClipRRect(
                child: Image(
                  image: NetworkImage(
                      'https://www.viagenscinematograficas.com.br/wp-content/uploads/2020/09/Ilhabela-SP-Praias-O-que-Fazer-Capa-2.jpg'),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                  child: Icon(Icons.favorite_border),
                ),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: BorderBox(
                  width: 50,
                  height: 50,
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ],
          ),
          addVerticalSpace(20),
          Padding(
            padding: sidePadding,
            child: Text(
              "R\$ 350,00",
              style: GoogleFonts.lato(textStyle: headline5),
            ),
          ),
          addVerticalSpace(5),
          Padding(
            padding: sidePadding,
            child: Text(
              "Ilhabela-SP",
              style: GoogleFonts.lato(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
