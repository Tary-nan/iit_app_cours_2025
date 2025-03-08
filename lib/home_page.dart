import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iit_first_app/detail_tutorial_page.dart';
import 'package:iit_first_app/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> listCategorySearch = [];

  var listCategory = [
    CategoryModel(
        title: 'Numbers',
        image: 'assets/images/cubes.png',
        description: '1 to 100',
        chapitres: [
          Chapitre(
              title: 'Introduction Numbers 0',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Numbers 1',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Numbers 2',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Numbers 3',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial)
        ]),
    CategoryModel(
        title: 'Shapes',
        image: 'assets/images/square.png',
        description: '1 to 100',
        chapitres: [
          Chapitre(
              title: 'Introduction Shapes 0',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Shapes 1',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Shapes 2',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Shapes 3',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial)
        ]),
    CategoryModel(
        title: 'Counting',
        image: 'assets/images/calculating.png',
        description: '1 to 100',
        chapitres: [
          Chapitre(
              title: 'Introduction Counting 0',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Counting 1',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Counting 2',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Counting 3',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial)
        ]),
    CategoryModel(
        title: 'Alphabet',
        image: 'assets/images/alphabet.png',
        description: '1 to 100',
        chapitres: [
          Chapitre(
              title: 'Introduction Alphabet 0',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Alphabet 1',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Alphabet 2',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Alphabet 3',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial)
        ]),
    CategoryModel(
        title: 'Reading',
        image: 'assets/images/literature.png',
        description: '1 to 100',
        chapitres: [
          Chapitre(
              title: 'Introduction Reading 0',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Reading 1',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Reading 2',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Reading 3',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial)
        ]),
    CategoryModel(
        title: 'Drawing',
        image: 'assets/images/scrapbook.png',
        description: '1 to 100',
        chapitres: [
          Chapitre(
              title: 'Introduction Drawing 0',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Drawing 1',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Drawing 2',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial),
          Chapitre(
              title: 'Introduction Drawing 3',
              duree: '15 min 5/5',
              url:
                  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              statut: Status.initial)
        ]),
  ];

  @override
  void initState() {
    listCategorySearch = listCategory;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0XFFFFEAE2)),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/pere.png')),
                      color: Colors.blue,
                      // borderRadius: BorderRadius.all(Radius.circular(999))
                    ),
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Drawer Header'),
                ],
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage('assets/images/pere.png')),
              color: Colors.blue,
              // borderRadius: BorderRadius.all(Radius.circular(999))
            ),
            height: 50,
            width: 50,
          ),
          // const Padding(
          //   padding: EdgeInsets.all(8.0),
          // child: CircleAvatar(
          //   child: Icon(Icons.person),
          // ),
          // )
        ],
        backgroundColor: Colors.white,
        title: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: 'Hello, ',
              style: TextStyle(fontSize: 20, color: Colors.black)),
          TextSpan(
              text: 'Muskan',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ])),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('assets/images/menu.png'));
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                final searchCat = listCategory
                    .where((elment) => elment.title
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toList();

                if (searchCat.isEmpty) {
                  return;
                }
                listCategorySearch = searchCat;

                setState(() {});

                print('value $value ==== $listCategorySearch');
              },
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(.3),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Search here...',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  )),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.symmetric(vertical: 20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  ...listCategorySearch.map((category) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => DetailTutorialPage(
                                    image: category.image,
                                    title: category.title,
                                    chapitres: category.chapitres,
                                  )));
                        },
                        child: CardCategory(
                          image: category.image,
                          titre: category.title,
                          description: category.description,
                        ),
                      ))

                  // const CardCategory(
                  //   image: 'assets/images/cubes.png',
                  //   titre: 'Numbers',
                  //   description: '1 to 100',
                  // ),
                  // const CardCategory(
                  //   image: 'assets/images/square.png',
                  //   titre: 'Shapes',
                  //   description: '1 to 100',
                  // ),
                  // const CardCategory(
                  //   image: 'assets/images/calculating.png',
                  //   titre: 'Counting',
                  //   description: '1 to 100',
                  // ),
                  // const CardCategory(
                  //   image: 'assets/images/alphabet.png',
                  //   titre: 'Alphabet',
                  //   description: '1 to 100',
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.of(context).push(MaterialPageRoute(
                  //         builder: (_) => const DetailTutorialPage(
                  //               image: 'assets/images/literature.png',
                  //               title: 'Reading',
                  //             )));
                  //   },
                  //   child: const CardCategory(
                  //     image: 'assets/images/literature.png',
                  //     titre: 'Reading',
                  //     description: '1 to 100',
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (_) => const DetailTutorialPage(
                  //           image: 'assets/images/scrapbook.png',
                  //           title: 'Drawing',
                  //         )));
                  //   },
                  //   child: const CardCategory(
                  //     image: 'assets/images/scrapbook.png',
                  //     titre: 'Drawing',
                  //     description: '1 to 100',
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardCategory extends StatelessWidget {
  const CardCategory(
      {super.key,
      required this.image,
      required this.titre,
      required this.description});

  final String image;
  final String titre;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0XFFFFEAE2),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 80,
          ),
          Text(
            titre,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}



/// 2E METHODE
  //  Expanded(
  //             child: GridView.builder(
  //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisSpacing: 20,
  //                 mainAxisSpacing: 20,
  //                 crossAxisCount: 2,
  //               ),
  //               itemCount: listCategorySearch.length,
  //               primary: false,
  //               padding: const EdgeInsets.symmetric(vertical: 20),

  //               itemBuilder: (context, index) {
  //                 return CardCategory(
  //                   image: listCategorySearch[index].image,
  //                   titre: listCategorySearch[index].title,
  //                   description: listCategorySearch[index].description,
  //                 );
  //               },

           
  //             ),
  //           ),
         
         