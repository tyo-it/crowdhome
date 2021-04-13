import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: SizeConfig.screenHeight * 0.03),
                // Text("Disclaimer", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "PT CrowdHome Indonesia (“CrowdHome” atau “Penyelenggara”) hadir dalam rangka mendukung program pemerintah di bidang perumahan dengan mengembangkan bisnis layanan urun dana bersama, dengan mempertemukan Pemodal dan pihak pengembang properti (“Penerbit”) (selanjutnya Pemodal dan Penerbit disebut bersama-sama sebagai “Pengguna”).",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  "Pada layanan urun dana ini, timbulnya hubungan perdata terjadi apabila Pemodal sepakat untuk membeli saham yang ditawarkan oleh Penerbit, sehingga segala risiko yang timbul dari hubungan tersebut akan menjadi tanggung jawab masing-masing pihak.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  "Risiko yang timbul dari hak sebagai Pemodal untuk menerima dividen dari Penerbit merupakan risiko yang wajib ditanggung oleh Pemodal sesuai kebijakan dividen Penerbit.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  "CrowdHome hanya bertindak sebagai layanan urun dana yang mempertemukan antara Pemodal dengan Penerbit, dan tidak bertindak sebagai pelaku usaha yang menjalankan usaha untuk mengumpulkan dana terkait atau pengelola investasi (Penerbit). Sesuai dengan Pasal 23 Peraturan Otoritas Jasa Keuangan No. 37 Tahun 2018 tentang Layanan Urun Dana melalui Penawaran Saham Berbasis Teknologi Informasi atau Equity Crowdfunding (“POJK 37/2018”), kami menyatakan bahwa:",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "a. OTORITAS JASA KEUANGAN TIDAK MEMBERIKAN PERNYATAAN MENYETUJUI ATAU TIDAK MENYETUJUI EFEK INI, TIDAK JUGA MENYATAKAN KEBENARAN ATAU KECUKUPAN INFORMASI DALAM LAYANAN URUN DANA INI. SETIAP PERNYATAAN YANG BERTENTANGAN DENGAN HAL TERSEBUT ADALAH PERBUATAN MELANGGAR HUKUM.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "b. INFORMASI DALAM LAYANAN URUN DANA INI PENTING DAN PERLU MENDAPAT PERHATIAN SEGERA. APABILA TERDAPAT KERAGUAN PADA TINDAKAN YANG AKAN DIAMBIL, SEBAIKNYA BERKONSULTASI DENGAN PENYELENGGARA.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text(
                  "c. PENERBIT SAHAM DAN PENYELENGGARA, BAIK SENDIRI-SENDIRI MAUPUN BERSAMA-SAMA, BERTANGGUNG JAWAB SEPENUHNYA ATAS KEBENARAN SEMUA INFORMASI YANG TERCANTUM DALAM LAYANAN URUN DANA INI.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
