import 'package:flutter/material.dart';
import 'package:slivers_demo_flutter/bottom_navigation.dart';

import 'package:slivers_demo_flutter/pages/fitness_tracker/activities/activities_page.dart';
import 'package:slivers_demo_flutter/pages/nested_scroll_view_page.dart';
import 'package:slivers_demo_flutter/pages/networking/networking_page.dart';
import 'package:slivers_demo_flutter/pages/slivers_basic_page.dart';
import 'package:slivers_demo_flutter/page.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  Pages _page = Pages.basic;

  void _selectPage(dynamic page) => setState(() => _page = page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigation(
        page: _page,
        onSelectPage: _selectPage,
      ),
    );
  }

  Widget _buildBody() {
    return <Pages, WidgetBuilder>{
      Pages.basic: (_) => SliversBasicPage(),
      Pages.fetch: (_) => NetworkingPage(),
      Pages.custom: (_) => ActivitiesPage.withSampleData(),
       Pages.nested: (_) => NestedScrollViewPage(),
    }[_page]!(context);
  }
}
