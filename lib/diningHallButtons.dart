import 'package:denison_dining_app2/cafeBonAppetit.dart';
import 'package:denison_dining_app2/community.dart';
import 'package:denison_dining_app2/curtisHall.dart';
import 'package:denison_dining_app2/huffmanHall.dart';
import 'package:denison_dining_app2/nest.dart';
import 'package:denison_dining_app2/slaytershall.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiningHallButtons extends StatelessWidget {
  const DiningHallButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(
                //커티스
                onPressed: () {
                  //추후 웹뷰 추가 요함
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => curtisHall()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(200, 16, 46, 1),
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    textStyle: TextStyle(fontFamily: "Lora", fontSize: 20),
                    shadowColor: Colors.black,
                    side: BorderSide(color: Colors.black, width: 3),
                    shape: StadiumBorder()),
                child: Text('Curtis')),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(
                //슬레이터
                onPressed: () {
                  //추후 웹뷰 추가 요함
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => slayters()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(200, 16, 46, 1),
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    textStyle: TextStyle(fontFamily: "Lora", fontSize: 20),
                    shadowColor: Colors.black,
                    side: BorderSide(color: Colors.black, width: 3),
                    shape: StadiumBorder()),
                child: Text('Slayters')),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(
                //허프맨
                onPressed: () {
                  //추후 웹뷰 추가 요함
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => huffmanHall()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(200, 16, 46, 1),
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    textStyle: TextStyle(fontFamily: "Lora", fontSize: 20),
                    shadowColor: Colors.black,
                    side: BorderSide(color: Colors.black, width: 3),
                    shape: StadiumBorder()),
                child: Text('Huffman')),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(
                //네스트
                onPressed: () {
                  //추후 웹뷰 추가 요함
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nest()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(200, 16, 46, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    textStyle: TextStyle(fontFamily: "Lora", fontSize: 20),
                    shadowColor: Colors.black,
                    side: BorderSide(
                        color: Color.fromARGB(255, 16, 13, 13), width: 3),
                    shape: StadiumBorder()),
                child: Text('Nest at the Roost')),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(
                //학교다이닝홀 홈페이지
                onPressed: () {
                  //추후 웹뷰 추가 요함
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cafeBonAppetit()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(200, 16, 46, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    textStyle: TextStyle(fontFamily: "Lora", fontSize: 20),
                    shadowColor: Colors.black,
                    side: BorderSide(color: Colors.black, width: 3),
                    shape: StadiumBorder()),
                child: Text('Cafe Bon Appetit')),
          ),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: ElevatedButton(
                //커뮤니티 버튼
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(200, 16, 46, 1),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    textStyle: TextStyle(fontFamily: "Lora", fontSize: 20),
                    shadowColor: Colors.black,
                    side: BorderSide(color: Colors.black, width: 3),
                    shape: StadiumBorder()),
                child: Text('Community')),
          ),
        ],
      ),
    );
  }
}
