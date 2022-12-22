import 'package:flutter/material.dart';
import 'package:flutter_8_hourse/pages/add_to_cart.dart';
import 'package:flutter_8_hourse/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$ ${catalog.price}".text.bold.xl4.make(),
            AddToCart(
              catalog: catalog,
            ).h8(context).w32(context),
          ],
        ).p20(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h40(context),
              Expanded(
                child: VxArc(
                  height: 35.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        10.heightBox,
                        "Lorem Ipsum is simply dummy text  specimen book."
                            .text
                            .textStyle(context.captionStyle)
                            .xl
                            .make()
                            .p12()
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ],
          ) //.px16(),
          ),
    );
  }
}
