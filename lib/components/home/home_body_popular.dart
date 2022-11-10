import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBuildPopularTitle(),
        _buildPopularList(),
      ],
    );
  }

  Widget _buildBuildPopularTitle() {
    return Column(
      children: [
        Text(
          "한국 숙소에 직접 다녀간 게스트의 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 2,500,000개 이상, 평균 평점 4.7점(5점 만점)",
          style: body1(),
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildPopularList() {
    // 여백을 줄 때, Spacer()를 넣어줘도 된다. 알아서 공간을 잡아준다.
    // 나중에 container 빼기
    return Container(
      color: Colors.red,
      child: Wrap(
        children: [
          HomeBodyPopularItem(id: 0),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 1),
          SizedBox(width: 7.5),
          HomeBodyPopularItem(id: 2)
        ],
      ),
    );
  }
}
