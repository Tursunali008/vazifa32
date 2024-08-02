import 'package:flutter/material.dart';
import 'package:vazifa32/model/experience.dart';
import 'package:vazifa32/view/widget/timeline_item.dart';

class ExperienceScreen extends StatelessWidget {
  final List<Experience> experiences = [
    Experience(
      yearRange: "2024",
      title: "Flutter Mobile",
      company: "Najot Talim",
      description: "I study in Najot talim but i have more experience in Flutter mobile",
    ),
    
  ];

  ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: experiences.length,
      itemBuilder: (context, index) {
        final experience = experiences[index];
        return TimelineItem(
            experience: experience,
            isFirst: index == 0,
            isLast: index == experiences.length - 1);
      },
    );
  }
}
