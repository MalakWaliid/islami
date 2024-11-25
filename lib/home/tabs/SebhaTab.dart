import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int _textIndex = 0;
  final List<String> _texts = ['سبحان الله', 'الحمدلله', 'الله اكبر'];

  void _incrementCounter() {
    setState(() {
      counter++;
      if (counter > 33) {
        counter = 0; // Reset counter
        _textIndex = (_textIndex + 1) % _texts.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/default_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Text(
                "اسلامي",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0, left: 40.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/head_sebha_logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/body_sebha_logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'عدد التسبيحات',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xffB7935F),
                  ),
                  width: 50.0,
                  height: 60.0,
                  child: Center(
                    child: Text(
                      '$counter',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xffB7935F),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: 100.0,
                  height: 40.0,
                  child: FloatingActionButton(
                    onPressed: _incrementCounter,
                    child: Text(
                      _texts[_textIndex],
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
