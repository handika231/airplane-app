import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/presentation/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/item_detail_widget.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _headerContent(),
              _content(),
              _paymentDetail(),
              _footerContent(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _footerContent(BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(const SuccessCheckoutRoute());
        },
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(17),
          ),
          margin: const EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 30,
          ),
          child: Center(
            child: Text(
              'Pay Now',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            decoration: TextDecoration.underline,
            fontWeight: light,
          ),
        ),
      ),
      const SizedBox(
        height: 50,
      ),
    ],
  );
}

Widget _headerContent() {
  return Padding(
    padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
    child: Column(
      children: [
        Image.asset('assets/image_checkout.png'),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CGK',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Tangerang',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'TLC',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Ciliwung',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _content() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 30,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 30,
    ),
    decoration: BoxDecoration(
      color: kWhiteColor,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  'assets/image_destination1.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Tangerang',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.orange, size: 16),
                Text(
                  '4.8',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Booking Details',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const ItemDetailWidget(
          text: 'Traveler',
          value: '2 Person',
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemDetailWidget(
          text: 'Seat',
          value: 'A3, B3',
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemDetailWidget(
          text: 'Insurance',
          value: 'YES',
          color: ItemColor.green,
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemDetailWidget(
          text: 'Refundable',
          value: 'NO',
          color: ItemColor.red,
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemDetailWidget(
          text: 'VAT',
          value: '45%',
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemDetailWidget(
          text: 'PRICE ',
          value: 'IDR 8.500.690',
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemDetailWidget(
          text: 'Grand Total',
          color: ItemColor.purple,
          value: 'IDR 12.000.000',
        ),
      ],
    ),
  );
}

Widget _paymentDetail() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 30,
    ),
    margin: const EdgeInsets.fromLTRB(24, 0, 24, 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Payment Details',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        Row(
          children: [
            Container(
              width: 100,
              height: 70,
              margin: const EdgeInsets.only(top: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_card.png'),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.airplanemode_on, color: kWhiteColor),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Pay',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IDR 80.400.000',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Current Balance',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
