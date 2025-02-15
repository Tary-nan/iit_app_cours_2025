import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iit_first_app/detail_tutorial_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          //   child: CircleAvatar(
          //     child: Icon(Icons.person),
          //   ),
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
        leading: IconButton(
            onPressed: () {}, icon: Image.asset('assets/images/menu.png')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
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
                  const CardCategory(
                    image: 'assets/images/cubes.png',
                    titre: 'Numbers',
                    description: '1 to 100',
                  ),
                  const CardCategory(
                    image: 'assets/images/square.png',
                    titre: 'Shapes',
                    description: '1 to 100',
                  ),
                  const CardCategory(
                    image: 'assets/images/calculating.png',
                    titre: 'Counting',
                    description: '1 to 100',
                  ),
                  const CardCategory(
                    image: 'assets/images/alphabet.png',
                    titre: 'Alphabet',
                    description: '1 to 100',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const DetailTutorialPage()));
                    },
                    child: const CardCategory(
                      image: 'assets/images/literature.png',
                      titre: 'Reading',
                      description: '1 to 100',
                    ),
                  ),
                  const CardCategory(
                    image: 'assets/images/scrapbook.png',
                    titre: 'Drawing',
                    description: '1 to 100',
                  ),
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
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 90,
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
