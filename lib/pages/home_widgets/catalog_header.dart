import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';

class CalalogHedder extends StatelessWidget {
  const CalalogHedder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog APP".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Tranding Products".text.xl2.make(),
      ],
    );
  }
}
