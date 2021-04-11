import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/label_price.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home/components/special_offers.dart';

class ProductSimulation extends StatelessWidget {
  const ProductSimulation({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Simulasi Investasi",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LabelPrice(
                    label: "Investasi Awal",
                    value: "Rp 1.000.000",
                  ),
                  SizedBox(height: 20),
                  LabelPrice(
                    label: "Investasi Bulanan",
                    value: "Rp 1.000.000",
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Selama Jangka Waktu",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 5),
              LinearProgressIndicator(
                value: 0.2,
                valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                backgroundColor: Colors.amber,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 tahun",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "5 tahun",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: getProportionateScreenWidth(12),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text("Hasil yang kamu dapatkan adalah"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LabelValue(label: "Total Investasi", value: "Rp 12.000.000,7"),
                    SizedBox(width: 30),
                    LabelValue(label: "Imbal Hasil (2,86%)", value: "Rp 12.000.000,7"),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "* Simulasi dibuat berdasarkan kinerja reksa dana di masa lalu, tidak menjamin kinerja masa depan",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(50),
            right: getProportionateScreenWidth(50),
          ),
          child: DefaultButton(
            press: () {},
            text: "LANJUT",
          ),
        ),
      ],
    );
  }
}
