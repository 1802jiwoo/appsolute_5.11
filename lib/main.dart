import 'package:flutter/material.dart';
import 'package:instargram/screens/first.dart';
import 'package:instargram/screens/second.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 위에 빨간띠 제거
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectdeIndex = 0;

  final List<Widget> _screens = [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
    Tab5Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectdeIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Instargram',
            style: TextStyle(
              fontSize: 30
            ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite,size: 40,color: Colors.black,),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );            },
          ),
          IconButton(
            icon: Icon(Icons.send,size: 40,color: Colors.black,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );            },
          ),
        ],
      ),

      body: Center(
        child: _screens[_selectdeIndex],

      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 애니메이션 삭제
        showSelectedLabels: false, // 선택한 레이블 표시 거짓?
        showUnselectedLabels: false, // 선택하지않은 레이블 표시 거짓?
        selectedItemColor: Colors.blue, // 선택항목 색 바꾸기
        currentIndex: _selectdeIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: 'Tab1'),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), label: 'Tab2'),
          BottomNavigationBarItem(icon: Icon(Icons.movie, color: Colors.black), label: 'Tab3'),
          BottomNavigationBarItem(icon: Icon(Icons.local_mall, color: Colors.black), label: 'Tab4'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.black), label: 'Tab5'),
        ],
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(200),
                        ),
                        color: const Color(0xff333333)
                    ),
                  ),
                  SizedBox(
                      width: 20
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(200),
                        ),
                        color: const Color(0xff333333)
                    ),
                  ),
                  SizedBox(
                      width: 20
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(200),
                        ),
                        color: const Color(0xff333333)
                    ),
                  ),
                  SizedBox(
                      width: 20
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(200),
                        ),
                        color: const Color(0xff333333)
                    ),
                  ),
                  SizedBox(
                      width: 20
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(200),
                        ),
                        color: const Color(0xff333333)
                    ),
                  ),
                ],
              ),
              Text(
                ' ',
                style: TextStyle(
                    fontSize: 30
                ),
              ),
              Image.asset(
                'assets/jangunsuk.jpg',
                width: 380, // 가로
                height: 450,// 세로
                  fit: BoxFit.cover // 사진 실제 크기 상관 없이 위에 기준에 맞추기(사진 잘릴수 있음)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 2 Content'),
    );
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 3 Content'),
    );
  }
}

class Tab4Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 4 Content'),
    );
  }
}

class Tab5Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 5 Content'),
    );
  }
}