import 'package:flutter/material.dart';
import 'package:my_bio/page/biography/bio_header.dart';
import 'package:my_bio/page/footer.dart';
import 'package:my_bio/page/home.dart';
import 'package:my_bio/theam/app_theam.dart';

class HomePageBio extends StatefulWidget {
  const HomePageBio({Key? key}) : super(key: key);

  @override
  State<HomePageBio> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageBio> {
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
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      )),
      backgroundColor: AppThemeData.backgroundGrey,
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: const [
              HeaderBio(),
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
