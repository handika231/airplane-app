import 'package:airplane_app/common/style.dart';
import 'package:flutter/material.dart';

import '../widgets/seat_widget.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _headerContent(),
              _seatItem(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _headerContent() {
  return Container(
    margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_available.png',
                    width: 16,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text('Available', style: blackTextStyle),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_selected.png',
                    width: 16,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text('Selected', style: blackTextStyle),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_unavailable.png',
                    width: 16,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text('Unavailable', style: blackTextStyle),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _seatItem() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
    child: Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: Center(
                child: Text('A'),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('B'),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Expanded(
              child: Center(
                child: Text('C'),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('D'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SeatWidget(),
            const SeatWidget(),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '1',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget()
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget(
              index: 0,
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '2',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget()
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SeatWidget(
              index: 1,
            ),
            const SeatWidget(
              index: 1,
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '3',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget(
              index: 0,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget(),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '4',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget(
              index: 0,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SeatWidget(
              index: 0,
            ),
            const SeatWidget(
              index: 0,
            ),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '5',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
            ),
            const SeatWidget(),
            const SeatWidget(
              index: 0,
            )
          ],
        ),
      ],
    ),
  );
}
