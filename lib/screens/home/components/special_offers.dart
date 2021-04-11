import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../constants.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Special for you",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/kos1.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () => Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                  arguments: ProductDetailsArguments(product: demoProducts[0]),
                ),
              ),
              SpecialOfferCard(
                image: "assets/images/kos1.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () => Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                  arguments: ProductDetailsArguments(product: demoProducts[1]),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: getProportionateScreenWidth(300),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.fitWidth,
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //       begin: Alignment.topCenter,
                    //       end: Alignment.bottomCenter,
                    //       colors: [
                    //         Color(0xFF343434).withOpacity(0.4),
                    //         Color(0xFF343434).withOpacity(0.15),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0),
                        vertical: getProportionateScreenWidth(10),
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            // TextSpan(
                            //   text: "$category\n",
                            //   style: TextStyle(
                            //     fontSize: getProportionateScreenWidth(18),
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                            // TextSpan(text: "$numOfBrands Brands")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama JENIS - NAMA PT.",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rp 5.750.000.000",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      LinearProgressIndicator(
                        value: 0.8,
                        valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                        backgroundColor: Colors.amber,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 15, 10, 10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelValue(
                                  label: "Jumlah Dana",
                                  value: "Rp 55.750.000.000",
                                ),
                                SizedBox(height: 8),
                                LabelValue(
                                  label: "Harga Per Lembar",
                                  value: "Rp 5.750.000.000",
                                ),
                                SizedBox(height: 8),
                                LabelValue(
                                  label: "Jangka Waktu",
                                  value: "Selamanya",
                                ),
                              ],
                            ),
                            SizedBox(width: 35),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelValue(
                                  label: "ROI",
                                  value: "13%",
                                ),
                                SizedBox(height: 8),
                                LabelValue(
                                  label: "Total Lembar",
                                  value: "1.730.000",
                                ),
                                SizedBox(height: 8),
                                LabelValue(
                                  label: "Jenis",
                                  value: "Saham",
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LabelValue extends StatelessWidget {
  final String label;
  final String value;

  const LabelValue({
    Key key,
    this.label,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black87,
            fontSize: getProportionateScreenWidth(12),
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
