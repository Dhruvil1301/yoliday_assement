import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/features/home/widgets/project.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // 4 Tabs
    _tabController.addListener(() {
      // setState(() {
      //   _tabIndex = _tabController.index; // Keep the TabBar and BottomNavigationBar in sync
      // });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Portfolio",
          style: GoogleFonts.roboto(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_bag, color: const Color(0xFFDF5532)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_sharp, color: const Color(0xFFDF5532)),
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: const Color(0xFFDF5532),
            labelColor: const Color(0xFFDF5532),
            unselectedLabelColor: Colors.grey,
            labelStyle: GoogleFonts.roboto(),
            tabs: const [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Project(),
                Center(child: Text('Tab 2 Content')),
                Center(child: Text('Tab 3 Content')),
                Center(child: Text('Tab 4 Content')),
              ],
            ),
          ),
        ],
      ),

    );
  }

  // Custom BottomNavigationBarItem with an indicator

  }
