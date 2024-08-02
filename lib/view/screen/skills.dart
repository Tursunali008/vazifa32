import 'package:flutter/material.dart';
import 'package:vazifa32/view/widget/skills_item.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              "Skills: Tech",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SkillItem(
              iconPath:
                  'https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/06/photoshop-logo.png',
              skillName: 'Adobe Photoshop',
            ),
            SkillItem(
              iconPath:
                  'https://papik.pro/grafic/uploads/posts/2023-04/1681548782_papik-pro-p-logotip-adobe-illustrator-vektor-4.png',
              skillName: 'Adobe Illustrator',
            ),
            SkillItem(
              iconPath:
                  'https://banner2.cleanpng.com/20180519/tqa/kisspng-java-development-kit-operating-systems-android-mac-5b007912159776.9746473115267576500885.jpg',
              skillName: 'Java Mobile Android',
            ),
            SkillItem(
              iconPath:
                  'https://www.creativetools.fi/image/cache/catalog/product/adobe/after-effects-cc/Adobe-AfterEffects-2020-Logo-1280x720.jpg',
              skillName: 'Adobe After Effects',
            ),
            SkillItem(
              iconPath:
                  'https://wylsa.com/wp-content/uploads/2022/09/figma.jpg',
              skillName: 'Figma',
            ),
            SkillItem(
              iconPath: 'https://web-creator.ru/technologies/html5.png',
              skillName: 'HTML5',
            ),
            SkillItem(
              iconPath: 'https://image.pngaaa.com/336/3920336-middle.png',
              skillName: 'CSS3',
            ),
            SkillItem(
              iconPath:
                  'https://w7.pngwing.com/pngs/314/161/png-transparent-kotlin-android-software-development-anonymous-function-programming-language-android-blue-angle-text.png',
              skillName: 'Kotlin',
            ),
            SkillItem(
              iconPath:
                  'https://stijndv.com/goodies/big-sur-replacement-icons/VScode-alt.png',
              skillName: 'VS Code',
            ),
          ],
        ),
      ),
    );
  }
}
