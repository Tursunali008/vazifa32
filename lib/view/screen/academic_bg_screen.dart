import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:vazifa32/view/widget/academic_item.dart';

class AcademicBgScreen extends StatelessWidget {
  const AcademicBgScreen({super.key});
  void _navigate() async {
    const url = "https://github.com/Tursunali008?tab=repositories";
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw "Couldn't find url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: buildAcademicItem(
                  category: 'GRADUATE',
                  title: 'SCHOOL 31',
                  institution: 'IN Andijon',
                  year: '2024',
                ),
              ),
              const SizedBox(height: 35),
              buildAcademicItem(
                category: 'MASTER',
                title: 'Paython',
                institution: 'Najot talim',
                year: '2023',
              ),
              const SizedBox(height: 35),
              buildAcademicItem(
                category: 'SUPERIOR TECHNICIAN',
                title: 'WEB APP DEVELOPMENT',
                institution: 'It Park',
                year: '2022',
              ),
              const SizedBox(height: 35),
              GestureDetector(
                onTap: _navigate,
                child: buildAcademicItem(
                  category: 'SPECIALIZATION',
                  title: 'FLUTTER DEVELOPER',
                  institution: 'ENTER GITHUB',
                  year: '2023',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
