import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/domain/models/popular_content.dart';
import 'package:airplane_app/presentation/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  final PopularContent popularContent;
  const DetailPage({super.key, required this.popularContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcATop,
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.4),
                        Colors.transparent,
                      ],
                    ).createShader(
                      Rect.fromLTRB(
                        0,
                        0,
                        rect.width,
                        rect.height,
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'background-${popularContent.imageUrl}',
                    child: Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            popularContent.imageUrl.toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 80,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        popularContent.title.toString(),
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 24,
                                          fontWeight: semiBold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        popularContent.subTitle.toString(),
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: light,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        popularContent.rating.toString(),
                                        style: whiteTextStyle.copyWith(
                                          fontWeight: medium,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    top: 400,
                    left: 24,
                    right: 24,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        '''Berada di jalur jalan provinsi yang menghubungkan Denpasar
Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.''',
                        style: blackTextStyle.copyWith(
                          height: 2.6,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            PhotoItem(image: 'assets/image_photo1.png'),
                            PhotoItem(image: 'assets/image_photo2.png'),
                            PhotoItem(image: 'assets/image_photo3.png'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Interests',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: const [
                          InterestItem(text: 'Kids Park'),
                          InterestItem(text: 'Honor Bridge'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: const [
                          InterestItem(text: 'City Museum'),
                          InterestItem(text: 'Central Mall'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                        Text(
                          'per orang',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        minimumSize: const Size(88, 50),
                      ),
                      child: Text(
                        'Book Now',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      onPressed: () {
                        AutoRouter.of(context).push(const ChooseRoute());
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InterestItem extends StatelessWidget {
  final String text;
  const InterestItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(
            'assets/icon_check.png',
            width: 16,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
