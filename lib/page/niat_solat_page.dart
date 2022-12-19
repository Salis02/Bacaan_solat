import 'dart:convert';
import 'package:bacaan_solat/models/model_niat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

class NiatSolat extends StatefulWidget {
  const NiatSolat({super.key});

  @override
  State<NiatSolat> createState() => _NiatSolatState();
}

class _NiatSolatState extends State<NiatSolat> {
  Future<List<ModelNiat>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('data/niatsolat.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => ModelNiat.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 170, 8),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff0e1446)),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Niat Solat Wajib",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Bacaan niat Solat wajib 5 waktu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      'images/praying.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: FutureBuilder(
                future: ReadJsonData(),
                builder: (context, data) {
                  if (data.hasError) {
                    return Center(
                      child: Text("${data.error}"),
                    );
                  } else if (data.hasData) {
                    var items = data.data as List<ModelNiat>;
                    return ListView.builder(
                      itemCount: items == null ? 0 : items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(15),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text(
                                items[index].name.toString(),
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Text(
                                                items[index].arabic.toString(),
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Text(
                                                items[index].latin.toString(),
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8, top: 5),
                                              child: Text(
                                                items[index]
                                                    .terjemahan
                                                    .toString(),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
