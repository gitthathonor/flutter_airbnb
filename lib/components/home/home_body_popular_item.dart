import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);

  final id;

  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // 전체 1000이면, 각각 228
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      color: Colors.green,
      width: popularItemWidth,
      // 나중에 지웠다 추가했다 해보기
      constraints: BoxConstraints(
        minWidth: 320,
      ),
      child: Column(
        children: [
          _buildBuildPopularItemImage(),
          _buildPopularItemStar(),
          _buildPopularItemComment(),
          _buildPopularItemUserInfo(),
        ],
      ),
    );
  }

  Widget _buildBuildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져 있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구 ㅋㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는 것도 전혀 불편함 없이 좋았어^^ 이불도 ㅗㅍ근하고 좋습니당ㅎㅎ",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(height: gap_s),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            Text("한국"),
          ],
        ),
      ],
    );
  }
}
