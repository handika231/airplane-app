import 'package:airplane_app/common/style.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button_widget.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardContent(),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 220,
              height: 55,
              child: CustomButtonWidget(
                onPressed: () {},
                title: 'Start Fly Now',
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardContent() {
    return SizedBox(
      width: 300,
      height: 200,
      child: Stack(
        children: [
          Image.asset(
            'assets/image_card.png',
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: whiteTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            'Kezia Anne',
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icon_plane.png',
                          width: 24,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Flexible(
                  child: Text(
                    'IDR 280.000.000',
                    style: whiteTextStyle.copyWith(
                      fontSize: 26,
                      fontWeight: medium,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
