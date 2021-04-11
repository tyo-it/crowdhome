import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/screens/details/components/label_price.dart';

import '../../../size_config.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Harga Per Unit 05 April 2020"),
                    Text("Rp 1.000.000"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Biaya Pembelian"),
                    Text("Gratis"),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Jumlah Pembelian"),
                  ],
                ),
                SizedBox(height: 15),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Rp Min 1.000.000",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LabelPrice(
                      label: "",
                      value: "1.000.000",
                    ),
                    LabelPrice(
                      label: "",
                      value: "2.000.000",
                    ),
                    LabelPrice(
                      label: "",
                      value: "5.000.000",
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Prospektus"),
                    Text("Ringkasan"),
                    Text("Ketentuan"),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    SizedBox(
                      width: 280,
                      child: Text(
                          "Saya telah membaca dan menyutujui seluruh Prospektus dan keterangan ringkas serta memahami resiko atas keputusan investasi yang akan saya buat"),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          DefaultButton(
            press: () {},
            text: "ORDER SEKARANG",
          ),
        ],
      ),
    );
  }
}
