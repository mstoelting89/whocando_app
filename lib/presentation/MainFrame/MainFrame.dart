import 'package:app/presentation/MessagesPage/MessagesPage.dart';
import 'package:app/presentation/Profile/ProfilePage.dart';
import 'package:app/presentation/SearchPage/SearchBody.dart';
import 'package:app/presentation/SwipePage/SwipePage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/NavigationIcon.dart';
import '../FavoritePage/FavoritePage.dart';

class MainFrame extends StatefulWidget {
  int pageIndex;

  MainFrame({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  final pages = [
    const SearchBody(),
    const SwipePage(),
    const FavoritePage(),
    const MessagesPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomLeft,
            colors: [theme.colorScheme.onPrimary, Colors.white]),
      ),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
            ],
          ),
          body: pages[widget.pageIndex],
          bottomNavigationBar: Container(
            height: 65,
            decoration: BoxDecoration(color: theme.colorScheme.primary),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: NavigationIcon(
                    callback: () {
                      setState(() {
                        widget.pageIndex = 0;
                      });
                    },
                    icon: Icons.home_outlined,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: NavigationIcon(
                    callback: () {
                      setState(() {
                        widget.pageIndex = 2;
                      });
                    },
                    icon: Icons.favorite_border,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: NavigationIcon(
                    callback: () {
                      setState(() {
                        widget.pageIndex = 3;
                      });
                    },
                    icon: Icons.local_post_office_outlined,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: NavigationIcon(
                    callback: () {
                      setState(() {
                        widget.pageIndex = 4;
                      });
                    },
                    icon: Icons.person_outline,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
