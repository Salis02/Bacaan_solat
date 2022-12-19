import 'package:flutter/material.dart';

class AyatKursi extends StatefulWidget {
  const AyatKursi({super.key});

  @override
  State<AyatKursi> createState() => _AyatKursiState();
}

class _AyatKursiState extends State<AyatKursi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 136, 23),
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
                        color: Color.fromARGB(255, 0, 0, 0),
                      )),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 7, 129, 68),
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ayat Kursi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Bacaan Ayat Kursi dengan tafsirnya",
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
                      "images/ayat_kursi.png",
                      width: 150,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 250, right: 20),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromARGB(255, 177, 140, 21),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Color.fromARGB(255, 78, 96, 220),
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Center(
                                          child: Text("Tafsir Ayat Kursi"),
                                        ),
                                        content: SingleChildScrollView(
                                          child: Text(
                                            "“Ayat kursi sebagai salah satu ayat dalam surat Al-Baqarah memberikan penjelasan tentang Allah Swt. yang memelihara hamba-Nya meliputi langit dan bumi. Hendaknya kita dapat mengkaji agar senantiasa meningkatkan keimanan kepada Allah Swt.,” terang Ustaz Dr. H. Nur Kholis, S.Ag., M.Ag. saat memberikan tausiah pada Kajian Islami Pagi Hari melalui kanal YouTube Masjid Islamic Center UAD. Ia menjelaskan potongan pertama pada ayat kursi yaitu Allahu laa ilaaha illaa huw yang bermakna Allah Swt. sebagai zat yang maha agung. Zat yang sempurna dan tiada bandingan sebagai zat yang berhak diibadahi. Manusia, hewan, dan tumbuhan sebagai makhluk ciptaannya tidak dapat membandingi akan kuasa dan kesempurnaannya. Manusia sebagai makhluk ciptaan Allah Swt. yang paling sempurna dengan akalnya tidak akan bisa menandingi kesempurnaan-Nya. Potongan ayat kursi selanjutnya ialah al-hayyul – qoyyuum. Allah Swt. dengan kesempurnaannya memiliki al-hayyul yang bermakna maha hidup. Allah Swt. sebagai zat yang hidup kekal abadi, tidak seperti makhluk yang akan mengalami kematian. Allah Swt. menjadi sempurna dengan hidup selamanya bersama ilmu, kekuasaan, dan kehendak yang dimiliki. Al-qoyyum bermakna yang maha berkuasa. Kekuasaan Allah Swt. atas segala sesuatu yang ada di bumi dan langit. Jika kekuasaan manusia hanya sementara, maka kekuasaan Allah Swt. adalah abadi. “Kalimat al-hayyul – qoyyuum menjadi bagian utuh di dalam Al-Qur’an yang tidak dapat dipisahkan. Al-hayyul – qoyyuum yang secara utuh memiliki makna bahwa Allah Swt. sebagai zat yang maha hidup memiliki kekuasaan dalam menjaga alam semesta. Adapun kekuasaannya dengan ilmu yang maha luas dan kehendak yang mulia. Kalimat selanjutnya yang berbunyi laa ta’ khuzuhuu sinatuw wa laa na’uum yang bermakna Allah tidak memiliki rasa kantuk dan tidur. Hal ini sebagai bukti bahwa dalam menjaga kekuasaan dan mengurusi umatnya Allah Swt. tidak pernah lalai,” tutup Ustaz Nur Kholis (23-04-2021). (Chk).",
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ));
                            },
                            child: Center(
                                child: Text(
                              "Tafsir",
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "بسم الله الرحمن الرحيم",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    "ٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُۥ مَا فِى ٱلسَّمَٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيم",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "allāhu lā ilāha illā huw, al-ḥayyul-qayyụm, lā ta`khużuhụ sinatuw wa lā na`ụm, lahụ mā fis-samāwāti wa mā fil-arḍ, man żallażī yasyfa’u ‘indahū illā bi`iżnih, ya’lamu mā baina aidīhim wa mā khalfahum, wa lā yuḥīṭụna bisyai`im min ‘ilmihī illā bimā syā`, wasi’a kursiyyuhus-samāwāti wal-arḍ, wa lā ya`ụduhụ ḥifẓuhumā, wa huwal-‘aliyul-‘aẓīm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: SelectableText(
                      "Terjemahan: Allah, tidak ada Tuhan yang berhak disembah selain Dia Yang Hidup Kekal lagi dan terus menerus mengurus makhluk-makhluk-Nya. Tidak mengantuk dan tidak pula tidur. kepunyaan-Nya apa yang ada di langit serta di bumi. Tidak ada yang dapat memberikan syafaat di sisi Allah tanpa izin dari-Nya. Allah mengetahui apa-apa saja yang ada di hadapan mereka serta di belakang mereka dan mereka tidak mengetahui apa-apa saja ilmu Allah selain apa yang dikehendaki oleh Allah. Kursi Allah meliputi langit serta bumi dan Allah tidak merasa berat untuk memelihara keduanya dan Allah Maha Tinggi lagi Maha Besar.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
