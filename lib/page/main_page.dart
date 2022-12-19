import 'package:bacaan_solat/models/model_bacaan.dart';
import 'package:bacaan_solat/page/ayat_kursi_page.dart';
import 'package:bacaan_solat/page/bacaan_solat_page.dart';
import 'package:bacaan_solat/page/niat_solat_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 129, 15),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NiatSolat()));
                    },
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("images/shalat.png"),
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Niat Salat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BacaanSolat()));
                    },
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("images/prayer.png"),
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Bacaan Solat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AyatKursi()));
                    },
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("images/quran.png"),
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Ayat Kursi",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
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
