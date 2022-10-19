import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  // hovered - 커서가 버튼에 떠있는 상태
                  // focused - 포커스 됐을 때
                  // pressed - 눌렸을 때 (o)
                  // dragged - 드래그 됐을때
                  //s elected - 선택됐을때(체크박스, 라디오 버튼)
                  // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때
                  // disabled - 비활성화 됐을 때 (o)
                  // error - 에러 상태
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black
                  ),
                  // 위와 같이 여러 상태에서 버튼의 변화를 컨트롤 가능, 거의 모든 부분에서 사용 가능하다
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states){
                        if(states.contains(MaterialState.pressed)){ // 상태 설정 부분
                          return Colors.red;
                        }
                        return null;
                      }
                  )
                ),
                  onPressed: () {},
                  child: Text('ButtonStyle')),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // 메인 컬러
                  primary: Colors.purple,
                  // 글자와 애니메이션 색
                  onPrimary: Colors.red,
                  // 그림자 색깔
                  shadowColor: Colors.green,
                  // 띄우기
                  elevation: 10.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                  ),
                  // 버튼 크기 조절
                  padding: EdgeInsets.all(10.0),
                  // 테두리 선 조절
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0
                  )
                ),
                  onPressed: () {},
                  child: Text('ElevatedButton')),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  // 주요색이므로 OutlinedButton에선 글자색과 애니메이션 색
                  primary: Colors.green,
                  // 배경색이지만 이럴꺼면 ElevatedButton
                  backgroundColor: Colors.yellow,
                  elevation: 10.0,
                ),
                  onPressed: () {},
                  child: Text('OutlinedButton')),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blueGrey,
                  backgroundColor: Colors.greenAccent,
                ),
                  onPressed: () {},
                  child: Text('TextButton'))
            ],
          ),
        )
      ),
    );
  }
}
