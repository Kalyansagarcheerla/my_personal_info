import 'package:flutter/material.dart';
import 'package:my_bio/page/footer.dart';
import 'package:my_bio/page/header.dart';
import 'package:my_bio/selection/blog.dart';
import 'package:my_bio/selection/contact.dart';
import 'package:my_bio/selection/developer.dart';
import 'package:my_bio/selection/social.dart';
import 'package:my_bio/theam/app_theam.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.backgroundGrey,
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: const [
              Header(),
              Developer(),
              Social(),
              Blog(),
              Contact(),
              SizedBox(height: 20.0),
              Footer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToTop,
        tooltip: 'Go to top',
        backgroundColor: AppThemeData.buttonPrimary,
        foregroundColor: AppThemeData.iconSecondary,
        child: const Icon(Icons.arrow_upward_rounded),
      ),
    );
  }
}