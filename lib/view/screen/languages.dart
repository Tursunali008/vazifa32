import 'package:flutter/material.dart';
import 'package:vazifa32/view/widget/build_language.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Languages",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            buildLanguageItem(
              flag: Icons.language,
              language: 'Uzbek',
              proficiency: 'Native',
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            buildLanguageItem(
              flag: Icons.language,
              language: 'Tajik',
              proficiency: 'Basic',
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            buildLanguageItem(
              flag: Icons.language,
              language: 'English',
              proficiency: 'Native',
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            buildLanguageItem(
              flag: Icons.language,
              language: 'Russion',
              proficiency: 'Basic',
              color: Colors.orange,
            ),
            const SizedBox(height: 20),
            buildLanguageItem(
              flag: Icons.language,
              language: 'Turkish',
              proficiency: 'Basic',
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
