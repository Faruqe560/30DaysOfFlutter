import 'package:flutter/material.dart';

import '../models/catalog.dart';
import 'home_details_page.dart';
import 'home_page.dart';
import 'home_widgets/catalog_items.dart';

class CataLogList extends StatelessWidget {
  const CataLogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.items.length,
      itemBuilder: ((context, index) {
        final catalog = CatelogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(
                        catalog: catalog,
                      ))),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      }),
    );
  }
}
