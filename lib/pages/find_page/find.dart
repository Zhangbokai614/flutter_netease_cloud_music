import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 140,
          // padding: const EdgeInsets.only(top: 40),
          margin: const EdgeInsets.only(top: 16),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.0),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://cdn.nlark.com/yuque/0/2021/png/158634/1626938618559-assets/web-upload/14565ee8-0276-4ed7-ae7a-4efc9f33aabd.png",
                    fit: BoxFit.fill,
                  ));
            },
            autoplay: true,
            duration: 1000,
            itemCount: 3,
            pagination: const SwiperPagination(
                // alignment: Alignment.bottomCenter,
                // builder: CustomSwiperPaginationBuilder(),
                ),
            // control: const SwiperControl(),
            itemWidth: 200,
            viewportFraction: 0.8,
            scale: 0.96,
            // layout: SwiperLayout.STACK
          ),
        )
      ],
    );
  }
}
