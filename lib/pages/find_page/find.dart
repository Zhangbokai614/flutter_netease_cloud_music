import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';

import 'model.dart';
import '../../utils/random_color.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  static const TextStyle _rowListItemTextStyle =
      TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w400);

  final _partitionList = <PartitionList>[
    PartitionList('每日推荐', Icons.calendar_month_outlined),
    PartitionList('私人FM', Icons.radio),
    PartitionList('歌单', Icons.list_alt_rounded),
    PartitionList('排行榜', Icons.bar_chart_rounded),
    PartitionList('有声书', Icons.book_rounded),
    PartitionList('数字专辑', Icons.disc_full_outlined),
    PartitionList('直播', Icons.camera),
  ];

  final _recommendedPlaylist = <ImageList>[
    ImageList(
      '今天从《加德满都的风铃》听起|私人雷达',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667718906329-assets/web-upload/10025471-b5c4-443b-ac1a-49a5ff53fcb3.jpeg",
    ),
    ImageList(
      '许巍 曾梦想仗剑走天涯',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667871469846-assets/web-upload/3d17aaa5-a347-472b-892f-3dffe5337f85.jpeg",
    ),
    ImageList(
      '随心远行 完美公路音乐',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667718973196-assets/web-upload/eebad9cc-be71-4ce8-8ace-e986c2f0d58f.jpeg",
    ),
    ImageList(
      '许巍演唱会live全记录',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667871688245-assets/web-upload/7864e2e7-479b-40f2-81e8-71ca9a847293.jpeg",
    ),
    ImageList(
      '许嵩',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667871807830-assets/web-upload/3d14e0c7-26b6-4a6e-ab38-772858c6f2e2.jpeg",
    ),
  ];

  final _popularPodcasts = <TitleList>[
    TitleList(
      '《养王八》',
      '郭德纲超清经典相声集（持续更新）',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667727204797-assets/web-upload/df93a9c0-e568-4732-8576-ac1f850b2ab6.jpeg",
    ),
    TitleList(
      '我会永远永远的爱你',
      '瞎听',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667842847879-assets/web-upload/ffb2ba0d-3b16-465f-b073-678c72368226.jpeg",
    ),
    TitleList(
      'Daylight（3D环绕 0.8X自改）',
      'Daylight（3D环绕 0.8X自改）',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667842848483-assets/web-upload/b3d95047-c10b-4f76-8938-ff6a093672e4.jpeg",
    ),
    TitleList(
      '假面骑士 Black SUN OP',
      '假面骑士 Black SUN OP',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667842963621-assets/web-upload/b4cacb5c-e16d-41b6-beb8-60f45f33cc17.jpeg",
    ),
    TitleList(
      '大梦的曲调 森林书系列任务',
      '原神须弥3.2版本OST|虚空鼓动，劫火高扬。',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667843429658-assets/web-upload/572d8dd6-3c43-47a8-8850-116fe1ca9e90.jpeg",
    ),
    TitleList(
      '霍元甲',
      '周杰伦',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667842963701-assets/web-upload/31766980-90be-40f4-8a2d-6a45943ba6bc.jpeg",
    ),
    TitleList(
      '《我是非主流》',
      '郭德纲于谦高清相声大全',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667843360192-assets/web-upload/171668be-a7e4-4b9f-b55d-9bd8919750f1.jpeg",
    ),
    TitleList(
      'ADELE',
      '瞎听',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667842963679-assets/web-upload/07ffecdd-edfc-4996-96b5-d75d079772c3.jpeg",
    ),
    TitleList(
      'Jay',
      '周杰伦',
      "https://cdn.nlark.com/yuque/0/2022/jpeg/660331/1667842847980-assets/web-upload/a64cb577-b35c-4633-8113-a614f45d4fde.jpeg",
    ),
  ];

  final List<BroadcastList> _broadcastList = <BroadcastList>[
    BroadcastList('保定广播新闻', '广播'),
    BroadcastList('青岛音乐体育广播', '广播'),
    BroadcastList('保定北岳之声904', '广播'),
    BroadcastList('俄罗斯夜店热单', '电音'),
    BroadcastList('新迪斯科', '电音'),
    BroadcastList('现代大乐队', '爵士'),
    BroadcastList('小提琴', '古典'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // swiper banner
        Container(
          width: 400,
          height: 128,
          color: Colors.white,
          padding: const EdgeInsets.only(top: 2),
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
              itemCount: 6,
              pagination: const SwiperPagination(
                alignment: Alignment.bottomCenter,
              ),
              itemWidth: 280,
              viewportFraction: 0.9,
              scale: 0.8,
              layout: SwiperLayout.DEFAULT),
        ),
        // partition row list
        Container(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          width: 400,
          height: 84,
          color: Colors.white,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemExtent: 66,
            itemCount: _partitionList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(10, 0, 0, 0),
                    ),
                    child: Icon(
                      _partitionList[index].icon,
                      color: Colors.red,
                      size: 26,
                    ),
                  ),
                  Text(
                    _partitionList[index].title,
                    style: _rowListItemTextStyle,
                  ),
                ],
              );
            },
          ),
        ),
        const Divider(
          height: 0.5,
          color: Colors.grey,
        ),
        // recommended play list
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 10, bottom: 8),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      '推荐歌单',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                      alignment: Alignment.center,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        border: Border.all(
                            width: 1,
                            color: Colors.grey.shade300,
                            style: BorderStyle.solid),
                      ),
                      child: const Text(
                        '更多>',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 72, 72, 72),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                width: 400,
                height: 148,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0)),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 110,
                  itemCount: _recommendedPlaylist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.only(right: 4, left: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 32),
                            width: 76,
                            height: 76,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: const Color.fromARGB(12, 0, 0, 0),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Transform.translate(
                              offset: const Offset(0.0, 16),
                              child: Transform.scale(
                                scale: 1.28,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    _recommendedPlaylist[index].image,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            _recommendedPlaylist[index].title,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 72, 72, 72),
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        // popular podcasts list
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                height: 38,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      '热门播客',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      height: 24,
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25.0)),
                        border: Border.all(
                            width: 1,
                            color: Colors.grey.shade300,
                            style: BorderStyle.solid),
                      ),
                      child: const Text(
                        '更多>',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 72, 72, 72),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 196,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0)),
                ),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  physics: const BouncingScrollPhysics(),
                  controller: PageController(
                    initialPage: 0,
                    viewportFraction: 0.9,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int itemIndex) {
                        return Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                margin: const EdgeInsets.only(right: 8),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      _popularPodcasts[(index * 3) + itemIndex]
                                          .image,
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      _popularPodcasts[(index * 3) + itemIndex]
                                          .title,
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.black87),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Text(
                                      _popularPodcasts[(index * 3) + itemIndex]
                                          .subtitle,
                                      style: _rowListItemTextStyle,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
        // broadcast
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(16),
          height: 172,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            color: Colors.white,
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Color.fromARGB(255, 45, 60, 68),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '广播',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _broadcastList.length,
                    itemExtent: 92,
                    itemBuilder: ((BuildContext context, int index) {
                      return Container(
                        width: 60,
                        height: 20,
                        margin: const EdgeInsets.only(
                          right: 8,
                          top: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          color: randomColor(190),
                        ),
                        child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  _broadcastList[index].title,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 82, 82, 82)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _broadcastList[index].type,
                                      style: const TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromARGB(255, 82, 82, 82)),
                                    ),
                                    const Icon(
                                      Icons.play_circle_rounded,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            )),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
