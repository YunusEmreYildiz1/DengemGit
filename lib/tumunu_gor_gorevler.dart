import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/ana_sayfa.dart';
import 'package:untitled6/classic_music_player.dart';
import 'package:untitled6/info.dart';
import 'package:untitled6/list_screen.dart';
import 'package:untitled6/profil_sayfa.dart';
import 'package:untitled6/task_provider.dart';

class Task {
  final String title;
  final String subtitle;
  final String imagePath;

  Task({required this.title, required this.subtitle, required this.imagePath});
}

class TumGorev extends StatelessWidget {
  final List<Task> tasks = [
    Task(
      title: taskList[0].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[0].imagePath,
    ),
    Task(
      title: taskList[1].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[1].imagePath,
    ),
    Task(
      title: taskList[2].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[2].imagePath,
    ),
    Task(
      title: taskList[3].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[3].imagePath,
    ),
    Task(
      title: taskList[4].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[4].imagePath,
    ),
    Task(
      title: taskList[5].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[5].imagePath,
    ),
    Task(
      title: taskList[6].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[6].imagePath,
    ),
    Task(
      title: taskList[7].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[7].imagePath,
    ),
    Task(
      title: taskList[8].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[8].imagePath,
    ),
    Task(
      title: taskList[9].title,
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: taskList[9].imagePath,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('GÖREVLER',
            style: GoogleFonts.poppins(
                fontSize: 23, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnaSayfa()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '  Tüm Görevler',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w600),
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
                                taskList[index].title,
                                taskList[index].description,
                                taskList[index].imagePath,
                                taskList[index].imagePath2,
                                newDescription: taskList[index].references)),
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
          SizedBox(height: 40),
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
