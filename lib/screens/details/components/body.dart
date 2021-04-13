import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/product_simulation.dart';
import 'package:shop_app/size_config.dart';

import 'color_dots.dart';
import 'product_information.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        Expanded(
          child: TopRoundedContainer(
            color: Colors.black12,
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    height: 40,
                    child: TabBar(
                      labelColor: Colors.black87,
                      tabs: <Tab>[
                        new Tab(text: "Informasi"),
                        new Tab(text: "Simulasi"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      ProductInformation(
                        product: product,
                        pressOnSeeMore: () {},
                      ),
                      ProductSimulation(
                        product: product,
                        pressOnSeeMore: () {},
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
