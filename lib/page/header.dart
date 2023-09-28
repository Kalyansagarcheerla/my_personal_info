import 'package:flutter/material.dart';
import 'package:my_bio/statics/data_values.dart';
import 'package:my_bio/statics/key_holders.dart';
import 'package:my_bio/theam/app_theam.dart';
import 'package:my_bio/widgets/button_rectangle.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  void scrollDown(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 1000),
    );
  }

  Widget navBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonRectangle(
          name: 'Developer',
          onPressed: () => scrollDown(KeyHolders.developerKey),
          message: 'Click to view my developer profiles',
        ),
        ButtonRectangle(
          name: 'Blog',
          onPressed: () => scrollDown(KeyHolders.blogKey),
          message: 'Click to view my blog profiles',
        ),
        ButtonRectangle(
          name: 'Social',
          onPressed: () => scrollDown(KeyHolders.socialKey),
          message: 'Click to view my social profiles',
        ),
        ButtonRectangle(
          name: 'Contact Me',
          onPressed: () => scrollDown(KeyHolders.contactKey),
          message: 'Click to view my contact details',
        ),
        const SizedBox(width: 20.0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.headerKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

           ClipOval(

             child: Image.asset(
                  'assets/images/Icon-192.png',
                  // height: 120.0,

              ),
           ),
            const SizedBox(height: 5.0),
            SelectableText(
              DataValues.appDeveloper,
              style: AppThemeData.themeData.textTheme.headlineMedium,
            ),
            const SizedBox(height: 5.0),
            SelectableText(
              DataValues.appNameLong,
              style: AppThemeData.themeData.textTheme.titleLarge,
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: SelectableText(
                textAlign: TextAlign.center,
                DataValues.appDescriptionLong,
                style: AppThemeData.themeData.textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 40.0),
            navBar(),
          ],
        ),
      ),
    );
  }
}
