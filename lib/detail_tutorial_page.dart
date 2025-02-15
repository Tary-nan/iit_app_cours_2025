import 'package:flutter/material.dart';
import 'package:iit_first_app/video_app.dart';

enum Status { terminer, encours, initial }

class DetailTutorialPage extends StatefulWidget {
  const DetailTutorialPage({super.key});

  @override
  State<DetailTutorialPage> createState() => _DetailTutorialPageState();
}

class _DetailTutorialPageState extends State<DetailTutorialPage> {
  double progression = 10;

  var chapitres = [
    {'titre': 'Introduction', 'duree': '15 min 5/5', 'statut': Status.terminer},
    {'titre': 'Basic Concept', 'duree': '15 min 2/5', 'statut': Status.encours},
    {
      'titre': 'Pronounciation',
      'duree': '20 min 0/5',
      'statut': Status.initial
    },
    {
      'titre': 'Pronounciation',
      'duree': '25 min 0/5',
      'statut': Status.initial
    },
    {
      'titre': 'Pronounciation',
      'duree': '45 min 0/5',
      'statut': Status.initial
    },
  ];

  Widget _iconByStatut(Status value) {
    if (value == Status.terminer) {
      return const CircleAvatar(
          backgroundColor: Colors.green,
          radius: 25,
          child: Icon(
            Icons.check,
            color: Colors.white,
          ));
    } else if (value == Status.encours) {
      return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            shape: BoxShape.circle,
          ),
          child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25,
              child: Icon(
                Icons.pause,
                color: Colors.red,
              )));
    } else {
      return Container(
        decoration: BoxDecoration(border: Border.all(), shape: BoxShape.circle),
        child: const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.play_arrow,
              color: Colors.black,
            )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffffeae2),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                    right: 40,
                    bottom: 30,
                    child: Image.asset(
                      'assets/images/literature.png',
                      height: size.height * .25,
                    ),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 27,
                            )),
                      )),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: SizedBox(
                      width: size.width,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Reading',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'By Oumar',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Please don't post only code as answer, but also provide an explanation what your code does and how it solves the problem of the question",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const Text(
                          'Cours details',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Slider(
                          min: 0.0,
                          max: 100.0,
                          activeColor: Colors.red,
                          value: progression,
                          inactiveColor: const Color(0xffffeae2),
                          onChanged: (value) {
                            setState(() {
                              progression = value;
                            });
                          },
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: chapitres.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    children: [
                                      _iconByStatut(
                                          chapitres[index]['statut'] as Status),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Chapter ${index + 1}: ${chapitres[index]['titre']}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '${chapitres[index]['duree']}',
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          if (true)
            const Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 200,
                width: 200,
                child: VideoApp(),
              ),
            )
        ],
      ),
    );
  }
}
