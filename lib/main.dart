import 'package:flutter/material.dart';
import 'package:iit_first_app/onboardding_page.dart';
import 'package:iit_first_app/utilisation_state_state.dart';

void main() {
  runApp(const KidSchoolApp());
}

class KidSchoolApp extends StatelessWidget {
  const KidSchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UtilisationStateState(),
    );
  }
}
