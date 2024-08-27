import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class muzik_klasik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD89E47),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: Text(
          'Klasik Müzik',
          style: GoogleFonts.poppins(fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.expand_more, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFD89E47),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/guitar.png'),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Klasik Müzik',
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'dinlendirici',
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.replay_10, size: 40, color: Colors.grey[700]),
                onPressed: () {},
              ),
              SizedBox(width: 40),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFF4B4B4B),
                child: IconButton(
                  icon: Icon(Icons.pause, color: Colors.white, size: 40),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 40),
              IconButton(
                icon: Icon(Icons.forward_10, size: 40, color: Colors.grey[700]),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 20),
          Slider(
            value: 30.0,
            min: 0.0,
            max: 100.0,
            activeColor: Colors.grey[800],
            onChanged: (double value) {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '01:30',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  '9:13',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.grey[200],
            child: Row(
              children: [
                Image.asset('assets/images/jazz_album.png', width: 50),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Last Beat',
                      style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Jazz',
                      style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.skip_previous, size: 30, color: Colors.grey[700]),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow, size: 30, color: Colors.grey[700]),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next, size: 30, color: Colors.grey[700]),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: muzik_klasik(),
  ));
}
