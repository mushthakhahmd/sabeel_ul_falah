import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sabeel/about_us.dart';
import 'package:sabeel/home.dart';
import 'package:sabeel/state/provider.dart';

class DrawarWidget extends StatelessWidget {
  const DrawarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(0xff1D438A),
                ),
                title: Text(
                  'home'.tr(),
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const home_page()));
                }),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
                leading: Icon(
                  Icons.account_circle_rounded,
                  color: Color(0xff1D438A),
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const about_us()));
                }),
            // Divider(
            //   color: Colors.black26,
            // ),
            // ListTile(
            //   leading: Icon(
            //     Icons.category,
            //     color: Color(0xff1D438A),
            //   ),
            //   title: Text(
            //     "Category",
            //     style: TextStyle(fontWeight: FontWeight.w500),
            //   ),
            // ),
            // Divider(
            //   color: Colors.black26,
            // ),
            // ListTile(
            //   leading: Icon(
            //     Icons.assistant_navigation,
            //     color: Color(0xff1D438A),
            //   ),
            //   title: Text(
            //     "Qibla Finder",
            //     style: TextStyle(fontWeight: FontWeight.w500),
            //   ),
            // ),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_none,
                color: Color(0xff1D438A),
              ),
              title: Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Color(0xff1D438A),
              ),
              title: Text(
                "Share",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: () {
                languageProvider.changeLanguage(Locale('ml', 'IN'));
              },
              leading: Icon(
                Icons.language,
                color: Color(0xff1D438A),
              ),
              title: Text(
                "Change to ML",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
