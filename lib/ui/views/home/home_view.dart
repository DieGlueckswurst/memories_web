import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memories_web/constants/text_styles.dart';
import 'package:memories_web/routing/views.dart';
import 'package:memories_web/ui/views/home/widgets/button_with_rounded_corner_border.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: AutoSizeText(
                      'Memories',
                      style: AppTextStyles.glossAndBloomH1Regular,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 50,
                  runSpacing: 20,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            context,
                            url:
                                'https://apps.apple.com/de/app/memories-deine-momente/id1620679156',
                          );
                        },
                        child: Image.asset(
                          'assets/icons/app_store.png',
                          width: 200,
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          _launchURL(
                            context,
                            url:
                                'https://play.google.com/store/apps/details?id=com.ckbusiness.memories',
                          );
                        },
                        child: Image.asset(
                          'assets/icons/google_play_store.png',
                          width: 200,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 50,
                  runSpacing: 20,
                  children: [
                    ButtonWithRoundedCornerBorder(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Views.agb,
                        );
                      },
                      title: 'AGB',
                    ),
                    ButtonWithRoundedCornerBorder(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Views.datenschutz,
                        );
                      },
                      title: 'Datenschutz',
                    ),
                    ButtonWithRoundedCornerBorder(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          Views.impressum,
                        );
                      },
                      title: 'Impressum',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(
    BuildContext context, {
    required String url,
  }) async {
    if (await canLaunchUrl(Uri.parse(url)) == true) {
      try {
        await launchUrl(
          Uri.parse(url),
        );
      } on PlatformException catch (e) {
        // opening pdf files will throw a Platform Exeption,
        // even though the file is opened/downlaoded correctly
        // so no further action needed

        // ignore: avoid_print
        print(e);
        return;
      }
    }
  }
}
