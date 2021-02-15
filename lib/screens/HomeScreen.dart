import 'package:flutter/material.dart';
import 'package:flutter_social_ui/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          "FRENZY",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 10),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 18),
          tabs: [
            Tab(
              text: "Trending",
            ),
            Tab(
              text: "Latest",
            )
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Center(
          child: Text(" I am here"),
        ),
      ),
    );
  }
}
