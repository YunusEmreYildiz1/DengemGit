import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task {
  final String title;
  final String subtitle;
  final String imagePath;

  Task({required this.title, required this.subtitle, required this.imagePath});
}

class TumGorev extends StatelessWidget {
  final List<Task> tasks = [
    Task(
      title: 'İş Başvurusu',
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
    Task(
      title: 'Topluluk Önünde Konuşmak',
      subtitle: 'Okuma Süresi: 8dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
    Task(
      title: 'Arkadaş Edinme',
      subtitle: 'Okuma Süresi: 10dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
    Task(
      title: 'Sohbet etme',
      subtitle: 'Okuma Süresi: 4dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
    Task(
      title: 'Sohbet etme',
      subtitle: 'Okuma Süresi: 4dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
    Task(
      title: 'Sohbet etme',
      subtitle: 'Okuma Süresi: 4dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
    Task(
      title: 'Sohbet etme',
      subtitle: 'Okuma Süresi: 4dk',
      imagePath: 'assets/images/gorsel7.JPG',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('GÖREVLER',
            style: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          //geri tuşuna basıldığında ne olsun
          onPressed: () {


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
              style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
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
                      // Butona tıklanınca yapılacak işlemler burada
                      print('${tasks[index].title} tıklandı');
                    },
                    child: Card(
                      color: Colors.white, //kart rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                tasks[index].imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tasks[index].title,
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  tasks[index].subtitle,
                                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 80,
        elevation: 0,
        selectedIndex: 0,  //hangisi seçili olduğu gösteriyo her sayfa için mutlaka bunu düzenle


        destinations: const [
          NavigationDestination(icon: Icon(Icons.home,size: 28.0,), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.music_note,size: 28.0,), label: 'Music'),
          NavigationDestination(icon: Icon(Icons.chat,size: 30.0,), label: 'Yanındayım',),
          NavigationDestination(icon: Icon(Icons.person,size: 28.0,), label: 'Profilim'),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: TumGorev()));
