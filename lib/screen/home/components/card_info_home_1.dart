import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tsel_clone/themes.dart';

class CardInfoHome extends StatelessWidget {
  const CardInfoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget circularPercent(double percent) {
      return CircularPercentIndicator(
        radius: 23.0,
        lineWidth: 8.0,
        animation: true,
        percent: percent,
        circularStrokeCap: CircularStrokeCap.round,
        backgroundColor: lightGrayColor,
        progressColor: orangeColor,
      );
    }

    Widget infoCardList_1() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: circularPercent(0),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Internet',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      'Not yet purchas',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: primaryTextColor,
                    ),
                  ],
                ),
                Text(
                  'You have ni quota',
                  style: regulerText10.copyWith(color: primaryTextColor),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget infoCardList_2() {
      return Row(
        children: [
          Expanded(
            child: circularPercent(0.5),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Multimedia',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Spacer(),
                    Text(
                      '9,20 GB',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      ' /20 GB left',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: browColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '9.2 GB/10GB is expiring tomorrow',
                      style: mediumText10.copyWith(
                        color: browColor,
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
      margin: EdgeInsets.only(top: 18, left: 12, right: 1),
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.13,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: greyCarColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 10, bottom: 16.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
                  children: [
                    Text(
                      'Rp 0',
                      style: extraBoldText26.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      'Active unitil 22 sep 2022',
                      style: mediumText12.copyWith(color: darkGrayColor),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          // height: 28,
                          // width: 119,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: redButtonColor,
                            borderRadius: BorderRadius.circular(16.5),
                          ),
                          // child: Align(
                          //   alignment: Alignment.center,
                          child: Text(
                            'Beli Paket',
                            style: mediumText12.copyWith(color: whiteColor),
                          ),
                          // ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.upload,
                              size: 25,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              'Top Up',
                              style: regulerText10.copyWith(color: blueColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 19,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.card_giftcard,
                              size: 25,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              'Kirim Hadiah',
                              style: regulerText10.copyWith(color: blueColor),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 17),
              child: Column(
                children: [
                  infoCardList_1(),
                  // Spacer(),
                  SizedBox(
                    height: 10,
                  ),
                  infoCardList_2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
