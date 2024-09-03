import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF8B70FC),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 21),
            Text('  Hoşgeldin, Arman',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Container(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1),
              Text(
                '   Bilgilendirme',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print('Resim tıklandı');
                        },
                        splashColor: Colors.purple.withOpacity(0.5),
                        highlightColor: Colors.purple.withOpacity(0.3),
                        child: Image.asset(
                          'assets/images/gorsell3.JPG',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '   Görevler',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Tümünü gör metnine tıklandı');
                      },
                      child: Text(
                        'Tümünü gör        ',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.0),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('İş Başvurusu kartına tıklandı');
                          },
                          child: _buildTaskCard('İş Başvurusu                 ㅤ', 'Okuma Süresi: 10dk', 'assets/images/gorsel7.JPG'),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('Topluluk Önünde Konuşmak kartına tıklandı');
                          },
                          child: _buildTaskCard('Topluluk Önünde Konuşma', 'Okuma Süresi: 8dk', 'assets/images/gorsel4.JPG'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '   Egzersizler',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.0),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 12,
                  children: [
                    _buildExerciseButton('Müzik', Color(0xFFD1C6FE)),
                    _buildExerciseButton('Meditasyon', Color(0xFFD7EDE2)),
                    _buildExerciseButton('Mindfulness', Color(0xFFFAE5C2)),
                    _buildExerciseButton('Nefes Al', Color(0xFFB5DDEB)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Yanındayım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _buildTaskCard(String title, String subtitle, String imagePath) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.41),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 82,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 11, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 40),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 9),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseButton(String title, Color color) {
    String nameToPrint = '';

    if (title == 'Müzik') {
      nameToPrint = 'müzik';
    } else if (title == 'Meditasyon') {
      nameToPrint = 'meditasyon';
    } else if (title == 'Mindfulness') {
      nameToPrint = 'Mindfulness';
    } else if (title == 'Nefes Al') {
      nameToPrint = 'nefes';
    }

    return GestureDetector(
      onTap: () {
        print(nameToPrint);
      },
      child: Container(
        width: 152,
        padding: EdgeInsets.all(19),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}