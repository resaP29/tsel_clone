import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tsel_clone/themes.dart';

class CardInfoHome_2 extends StatelessWidget {
  const CardInfoHome_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget infoCardList_1(
        String keterangan, String keterangan2, String keterangan3, var icones) {
      return Row(
        children: [
          Expanded(
            child: Icon(icones),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      keterangan,
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      keterangan2,
                      style: mediumText12.copyWith(color: primaryTextColor),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      keterangan3,
                      style: mediumText10.copyWith(
                        color: Colors.black,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 18, left: 12, right: 15),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.13,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 17),
              child: Column(
                children: [
                  infoCardList_1('Telepon', 'Belum dibeli',
                      'Anda tidak memiliki kuota', Icons.phone),
                  Spacer(),
                  infoCardList_1('SMS', 'Belum dibeli',
                      'Anda tidak memiliki kuota', Icons.message),
                  Spacer(),
                  infoCardList_1('Monetary', 'Belum dibeli',
                      'Anda tidak memiliki keuangan', Icons.money),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
