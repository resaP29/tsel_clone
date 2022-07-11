import 'dart:ffi';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tsel_clone/screen/home/clip.dart';
import 'package:tsel_clone/screen/home/components/card_info_home_1.dart';
import 'package:tsel_clone/screen/home/components/card_info_home_2.dart';
import 'package:tsel_clone/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Container headerContent(var icone, String text, var colore) {
      return Container(
        margin: const EdgeInsets.only(
          top: 13,
          right: 5,
        ),
        padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
        decoration: BoxDecoration(
          color: colore,
          borderRadius: const BorderRadius.all(
            const Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icone,
              color: whiteColor,
              size: 10,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: boldText12.copyWith(color: whiteColor),
            ),
            Icon(
              Icons.chevron_right,
              color: whiteColor,
              size: 18,
            ),
          ],
        ),
      );
    }

    Widget promoCard() {
      return Container(
        margin: EdgeInsets.only(top: 15, left: 10),
        height: 110,
        width: 260,
        decoration: BoxDecoration(
          color: greyCarColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.elliptical(20, 30),
                  ),
                ),
                height: 25.0,
                width: 80.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Beli lagi"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Paket Spesial 4G'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp. 11.000',
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      Spacer(),
                      Text(
                        'Rp. 11.000',
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Text(
                          '7 hari',
                          style: boldText13.copyWith(color: primaryTextColor),
                        ),
                        VerticalDivider(
                          width: 20,
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                          color: Colors.grey,
                        ),
                        Container(
                          height: 25,
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                              color: blackColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Beli sekali',
                              style: mediumText12.copyWith(
                                  color: primaryTextColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget promoCard2(
        urlImg, String keterangan_card, String keterangan_card_bawah) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 8),
            width: 260,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(15)),
              image: DecorationImage(
                image: NetworkImage(urlImg),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          ketrangan_bawah(keterangan_card),
          container_Bawah(keterangan_card),
          ketrangan_bawah(keterangan_card_bawah),
        ],
      );
    }

    Widget header() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Resa Pamilianto',
                  style: boldText15.copyWith(color: whiteColor),
                ),
                const Spacer(),
                Icon(
                  Icons.qr_code_rounded,
                  color: whiteColor,
                  size: 28,
                ),
                const SizedBox(
                  width: 12,
                ),
                Badge(
                  // position: BadgePosition.topEnd(top: 10, end: 0),
                  animationDuration: const Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.scale,
                  // shape: BadgeShape.square,
                  // borderRadius: BorderRadius.circular(20),
                  badgeContent: const Text(
                    '13',
                    style: TextStyle(color: Colors.white),
                  ),
                  badgeColor: Colors.black,

                  child: Icon(
                    Icons.mail_outline,
                    color: whiteColor,
                    size: 28,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.question_mark,
                  color: whiteColor,
                  size: 28,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '085242*******',
                  style: boldText15.copyWith(color: whiteColor),
                ),
                const SizedBox(
                  width: 7,
                ),
                Icon(
                  Icons.add,
                  color: whiteColor,
                )
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                headerContent(Icons.military_tech, 'Silver', silverColor),
                headerContent(Icons.favorite, '19 POIN', darkRedColor),
                headerContent(Icons.star, 'Dealy Check In', darkRedColor),
              ],
            ),
          ],
        ),
      );
    }

    Widget cardInfo() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CardInfoHome(),
            CardInfoHome_2(),
          ],
        ),
      );
    }

    Widget content(context) {
      return Container(
        width: 395,
        height: MediaQuery.of(context).size.height * 2,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 18, right: 8),
          // padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text('Direkomndasikan untuk anda',
                    style: boldText15.copyWith(color: primaryTextColor)),
                Spacer(),
                Text('Lihat semua',
                    style: boldText13.copyWith(color: blueColor)),
              ]),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    promoCard(),
                    promoCard(),
                  ])),
              SizedBox(height: 15),
              Text('Spesial Untuk Kamu',
                  style: boldText15.copyWith(color: primaryTextColor)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-03/halo-tokopedia-THUMB.png?w=900',
                        'paket',
                        'Paket Murah'),
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-06/dg-voucher-hadiah-THUMB.jpg',
                        'game',
                        'Kuota Game'),
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-06/DCI-june--THUMB.jpg',
                        'promo',
                        'Promo Setiap Hari'),
                  ],
                ),
              ),

              /////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 15),
              Text('Waktunya Main!',
                  style: boldText15.copyWith(color: primaryTextColor)),
              Container(
                margin: EdgeInsets.only(top: 15, left: 8),
                padding: const EdgeInsets.all(20.0), //isi
                width: 350,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(15)),
                  border: Border.all(width: 2.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Yuk Mabar',
                        style: boldText15.copyWith(color: primaryTextColor)),
                    Text('Break Dulu lah!',
                        style: boldText15.copyWith(color: primaryTextColor)),
                  ],
                ),
              ),
              /////////////////////////////////////////////////////////////////////////////////////
              SizedBox(height: 15),
              Text('Apa Yang Baru?',
                  style: boldText15.copyWith(color: primaryTextColor)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-03/halo-tokopedia-THUMB.png?w=900',
                        'paket',
                        'Paket Murah'),
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-06/dg-voucher-hadiah-THUMB.jpg',
                        'game',
                        'Kuota Game '),
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-06/DCI-june--THUMB.jpg',
                        'promo',
                        'Promo Setiap Hari'),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text('Jelajahi Telkomsel!',
                  style: boldText15.copyWith(color: primaryTextColor)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-03/halo-tokopedia-THUMB.png?w=900',
                        'paket',
                        'Paket Murah'),
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-06/dg-voucher-hadiah-THUMB.jpg',
                        'game',
                        'Kuota Game '),
                    promoCard2(
                        'https://www.telkomsel.com/sites/default/files/promotion/banner/2022-06/DCI-june--THUMB.jpg',
                        'promo',
                        'Promo Setiap Hari'),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text('Penawaran Menarik Lainnya',
                  style: boldText15.copyWith(color: primaryTextColor)),
              Text('Liat Semua Kategori Penawaran Disin',
                  style: regulerText10.copyWith(color: primaryTextColor)),

              SizedBox(height: 15),
              Text('Chek-in',
                  style: boldText15.copyWith(color: primaryTextColor)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    // padding: const EdgeInsets.all(20.0), //isi
                    width: MediaQuery.of(context).size.width,
                    height: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/peduli_lindungi.jpg',
                        ),
                        // scale: 10,
                        fit: BoxFit.fill,
                        // fit: BoxFit.fitWidth,
                      ),
                      border: Border.all(width: 0.5),
                    ),
                  ),
                  container_Bawah('Patner'),
                  SizedBox(height: 15),
                  Text('Peduli lindungi',
                      style: boldText13.copyWith(color: primaryTextColor)),
                  // SizedBox(height: 30),
                ],
              ),
              SizedBox(height: 50),
              Text(
                  'Kamu selesai semua. kembali lagi lain waktu, untuk content menaril lainnya ya',
                  style: regulerText10.copyWith(color: primaryTextColor),
                  textAlign: TextAlign.center),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.topRight,
              stops: [0.1, 0.7, 1],
              colors: [redColor, redColor, yellowColor]),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                header(),
                cardInfo(),
                content(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container container_Bawah(String keterangan_card) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
        left: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 25.0,
      width: 60.0,
      child: Align(
        alignment: Alignment.center,
        child: Text(keterangan_card),
      ),
    );
  }

  Container ketrangan_bawah(String keterangan_card_bawah) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
      ),
      child: Text(
        keterangan_card_bawah,
        style: boldText14.copyWith(color: primaryTextColor),
      ),
    );
  }
}
