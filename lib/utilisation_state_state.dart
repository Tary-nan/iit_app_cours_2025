import 'package:flutter/material.dart';

class UtilisationStateState extends StatefulWidget {
  const UtilisationStateState({super.key});

  @override
  State<UtilisationStateState> createState() => _UtilisationStateStateState();
}

class _UtilisationStateStateState extends State<UtilisationStateState> {
  var isPlaying = false;

  @override
  Widget build(BuildContext context) {
    print('Construction interface $isPlaying');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'valeur :isPlaying $isPlaying',
              style: const TextStyle(fontSize: 32),
            ),
            CircleAvatar(
                radius: 50,
                backgroundColor: isPlaying ? Colors.pink : Colors.orange,
                child: IconButton(
                    onPressed: () {
                      print('old value: $isPlaying');

                      setState(() {
                        isPlaying = !isPlaying;

                        // if (isPlaying == true) {
                        //   isPlaying = false;
                        // } else {
                        //   isPlaying = true;
                        // }
                      });
                      print('new value : $isPlaying');
                    },
                    icon: Icon(
                      isPlaying ? Icons.play_arrow : Icons.pause,
                      size: 35,
                      color: isPlaying ? Colors.white : Colors.black,
                    ))),
          ],
        ),
      ),
    );
  }
}
