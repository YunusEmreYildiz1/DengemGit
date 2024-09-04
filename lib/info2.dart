import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Info2());
}

class Info2 extends StatelessWidget {
  void _showFullTextModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sosyal fobi olarak da bilinir. Bireyin başkaları tarafından yargılanma kaygısını taşıdığı toplumsal ortamlarda mahcup ya da rezil olacağı konusunda belirgin ve sürekli korkusunun olduğu bir kaygı bozukluğudur. '
                      'Sosyal kaygı bozukluğu olan bireyler başkalarıyla etkileşime geçmeleri gereken veya toplum içerisinde yapmaları lazım olan davranışlardan kaçınırlar (Sosyal Fobi | TÜRKİYE PSİKİYATRİ DERNEĞİ, n.d.).[1] '
                      'Bunun sonucunda bireyin günlük yaşam işlevleri olumsuz etkilenmekle beraber yaşam kalitesinde de düşüş gözlemlenir.',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/anskeyete.png'), // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sosyal anksiyete nedir?',
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.info_outline),
                            ],
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Hakkında',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Sosyal fobi olarak da bilinir. Bireyin başkaları tarafından yargılanma kaygısını taşıdığı toplumsal ortamlarda mahcup ya da rezil olacağı konusunda belirgin ve sürekli korkusunun olduğu bir kaygı bozukluğudur. '
                                'Sosyal kaygı bozukluğu olan bireyler başkalarıyla etkileşime geçmeleri gereken veya toplum içerisinde yapmaları lazım olan davranışlardan kaçınırlar (Sosyal Fobi | TÜRKİYE PSİKİYATRİ DERNEĞİ, n.d.).[1] '
                                'Bunun sonucunda bireyin günlük yaşam işlevleri olumsuz etkilenmekle beraber yaşam kalitesinde de düşüş gözlemlenir. Tamamını gör...',
                            style: GoogleFonts.poppins(fontSize: 16),
                          ),
                          // Add more content here if needed
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 16,
              child: GestureDetector(
                onTap: () {
                  // Handle bookmark action
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Icon(Icons.bookmark_border, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    _showFullTextModal(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    backgroundColor: Color(0xFF8B70FC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    'Tamamını Gör',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}