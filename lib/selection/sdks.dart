import 'package:flutter/material.dart';
import 'package:my_bio/statics/data_values.dart';
import 'package:my_bio/theam/app_theam.dart';

import '../statics/key_holders.dart';
import '../widgets/card_profile.dart';
import '../widgets/text_section_head.dart';

class SoftwareDevelopmentKits extends StatelessWidget {
  const SoftwareDevelopmentKits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.SoftwareDevelopmentKits,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextSectionHead(
              title: 'Software Development Kits',
              subtitle:
              'The majority of tech professionals use these platforms to showcase their work. You might also find me here.',
            ),
            const SizedBox(height: 20.0),
            CardProfile(
              type: 'IDE',
              widget: 'androidStudio',
              title: 'Android Studio',
              url: Uri.parse(''),
              // url: DataValues.githubURL,
            ),
            CardProfile(
              type: 'Apis',
              widget: 'postman',
              title: 'Postman',
              url: Uri.parse(''),
              // url: DataValues.framerURL,
            ),CardProfile(
              type: 'framework',
              widget: 'flutter',
              title: 'Flutter',
              url: Uri.parse(''),
              // url: DataValues.framerURL,
            ),CardProfile(
              type: 'language',
              widget: 'dart',
              title: 'Dart',
              url: Uri.parse(''),
              // url: DataValues.framerURL,
            ),

          ],
        ),
      ),
    );
  }
}