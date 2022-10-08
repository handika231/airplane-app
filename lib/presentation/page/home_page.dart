import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/domain/models/destination_model.dart';
import 'package:airplane_app/domain/models/popular_content.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/app_route.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            _headerContent(context),
            _popularDestinationContent(),
            _destinationTile(),
          ],
        ),
      ),
    );
  }

  _headerContent(context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Howdy,\n${state.user.name}',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Where to fly today?',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(const SignOutRoute());
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        'assets/image_profile.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  _popularDestinationContent() {
    return Container(
      height: 350,
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 24,
        top: 30,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOfContent.length,
        itemBuilder: (BuildContext context, int index) {
          return _popularDestinationItem(listOfContent[index], context);
        },
      ),
    );
  }

  _popularDestinationItem(PopularContent listOfContent, BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(DetailRoute(popularContent: listOfContent));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
        ),
        margin: const EdgeInsets.only(right: 24),
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Stack(
                children: [
                  Hero(
                    tag: 'background-${listOfContent.imageUrl}',
                    child: Image.asset(
                      listOfContent.imageUrl.toString(),
                      width: 180,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 55,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            '${listOfContent.rating}',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: Text(
                listOfContent.title.toString(),
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Flexible(
              child: Text(
                listOfContent.subTitle.toString(),
                style: greyTextStyle.copyWith(fontWeight: light),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _destinationTile() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listOfDestinations.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        listOfDestinations[index].imageUrl.toString(),
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listOfDestinations[index].name.toString(),
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            listOfDestinations[index].location.toString(),
                            style: greyTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          listOfDestinations[index].rating.toString(),
                          style: blackTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
