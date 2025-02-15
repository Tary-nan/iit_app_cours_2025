import 'package:flutter/material.dart';
import 'package:iit_first_app/home_page.dart';

class OnboarddingPage extends StatelessWidget {
  const OnboarddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFf9673f),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // IMAGE
          Image.network(
              'https://cdn-icons-png.freepik.com/256/13972/13972409.png?uid=R129275482&ga=GA1.1.473836191.1737778491&semt=ais_hybrid',
              height: 150),

          // TEXT FIRST
          const Text('Learn anything\nAny Time Any Where',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),

          const Text(
              "La Schutzstaffel (de l'allemand « escadron de protection »), plus communément désignée par son sigle SS, est une des principales organisations du régime",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w300)),

          ElevatedButton(
              onPressed: () {
                print('Hello ');

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));

                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => const HomePage()));
              },
              child: const Text('Start now'))
        ]),
      ),
    );
  }
}
