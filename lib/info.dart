import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final DraggableScrollableController _scrollableController = DraggableScrollableController();
  bool _isFullyOpened = false;

  String _title = "Sosyal Anksiyete Nedir?";
  String _description = "Sosyal fobi olarak da bilinir. Bireyin başkaları tarafından yargılanma kaygısını taşıdığı toplumsal ortamlarda mahcup ya da rezil olacağı konusunda belirgin ve sürekli korkusunun olduğu bir kaygı bozukluğudur.";
  String _hakkinda = "Hakkında";
  final String _imagePath = "assets/images/anskeyete.png";

  String _initialDescription = "Sosyal fobi olarak da bilinir. Bireyin başkaları tarafından yargılanma kaygısını taşıdığı toplumsal ortamlarda mahcup ya da rezil olacağı konusunda belirgin ve sürekli korkusunun olduğu bir kaygı bozukluğudur.";

  @override
  void initState() {
    super.initState();

    _scrollableController.addListener(() {
      setState(() {
        _isFullyOpened = _scrollableController.size == 0.95;
      });
    });
  }

  @override
  void dispose() {
    _scrollableController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    ClipRect(
                      child: Align(
                        alignment: Alignment.topCenter,
                        heightFactor: .9,
                        widthFactor: 1,
                        child: Transform.scale(
                          scale: 1.65,
                          child: Image.asset(
                            _imagePath,
                            width: 500,
                            height: 400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 15,
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1B1E28).withOpacity(0.3),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,size: 17,),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            controller: _scrollableController,
            initialChildSize: 0.61,
            minChildSize: 0.61,
            maxChildSize: .95,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  width: 40,
                                  height: 5,
                                  margin: const EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    _title,
                                    style: const TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (_description == _initialDescription) {
                                          _description = "citation";
                                        } else {
                                          _description = _initialDescription;
                                        }

                                        if (_hakkinda == "Hakkında") {
                                          _hakkinda = "Akademik Dayanağı";
                                        } else {
                                          _hakkinda = "Hakkında";
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.info),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Text(
                                _hakkinda,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                _description,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Visibility(
                      visible: !_isFullyOpened,
                      child: const Text(
                        'Tamamını görmek için aşağı kaydırın',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}