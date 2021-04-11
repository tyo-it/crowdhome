import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../home/components/special_offers.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({
    Key key,
    @required this.product,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                "NAMA JENIS - NAMA PT.",
                //product.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(18),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelValue(
                        label: "Harga Per Lot",
                        value: "Rp. 5.750.000.000",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(8),
                      ),
                      LabelValue(
                        label: "Periode Dividen",
                        value: "Per 3 Bulan",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(32),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelValue(
                        label: "Jumlah Lot",
                        value: "5750",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(8),
                      ),
                      LabelValue(
                        label: "Estimasi Dividen",
                        value: "6-8% per tahun",
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(50),
            right: getProportionateScreenWidth(50),
            top: getProportionateScreenHeight(20),
          ),
          child: DefaultButton(
            press: () {},
            text: "UNDUH PROSPEKTUS",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Deskripsi usaha"),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
