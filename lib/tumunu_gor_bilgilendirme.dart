import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/ana_sayfa.dart';
import 'package:untitled6/classic_music_player.dart';
import 'package:untitled6/info.dart';
import 'package:untitled6/info2.dart';
import 'package:untitled6/info_provider.dart';
import 'package:untitled6/list_screen.dart';
import 'package:untitled6/profil_sayfa.dart';

class Task {
  final String title;
  final String subtitle;
  final String imagePath;

  Task({required this.title, required this.subtitle, required this.imagePath});
}

class TumBilgilendirme extends StatelessWidget {
  final List<Task> tasks = [
    Task(
      title: infoList[0].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[0].imagePath,
    ),
    Task(
      title: infoList[1].title,
      subtitle: 'Okuma Süresi: 8dk',
      imagePath: infoList[1].imagePath,
    ),
    Task(
      title: infoList[2].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[2].imagePath,
    ),
    Task(
      title: infoList[3].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[3].imagePath,
    ),
    Task(
      title: infoList[4].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[4].imagePath,
    ),
    Task(
      title: infoList[5].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[5].imagePath,
    ),
    Task(
      title: infoList[6].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[6].imagePath,
    ),
    Task(
      title: infoList[7].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[7].imagePath,
    ),
    Task(
      title: infoList[8].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[8].imagePath,
    ),
    Task(
      title: infoList[9].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[9].imagePath,
    ),
    Task(
      title: infoList[10].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[10].imagePath,
    ),
    Task(
      title: infoList[11].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: infoList[11].imagePath,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('DENGEM SÖZLÜĞÜ',
            style:
            GoogleFonts.poppins(fontSize: 21, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Tüm Bilgilendirmeler',
              style: GoogleFonts.poppins(
                  fontSize: 17, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Info(
                              infoList[index].title,
                              infoList[index].description,
                              infoList[index].imagePath,
                              infoList[index].imagePath2,
                              newDescription: infoList[index].references,
                            )),
                      );
                    },
                    child: _buildTaskCard(
                      tasks[index].title,
                      tasks[index].subtitle,
                      tasks[index].imagePath,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Müzik',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Yanındayım',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
        onTap: (i) {
          if (i == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnaSayfa()),
            );
          }
          if (i == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ClassicMusicPlayer()),
            );
          }
          if (i == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PsychologistSelectionScreen()),
            );
          }
          if (i == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profil()),
            );
          }
        },
      ),
    );
  }

  Widget _buildTaskCard(String title, String subtitle, String imagePath) {
    return Container(
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
          SizedBox(height: 50),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 9),
          ),
        ],
      ),
    );
  }
}
