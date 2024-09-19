import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/features/home/widgets/portfolio.dart';
import 'package:untitled1/features/home/widgets/project.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _getBodyContent(), // Use a helper function to get body content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _buildBottomNavigationBarItem(Icons.home, 'Home', 0),
          _buildBottomNavigationBarItem(Icons.backpack, 'Portfolio', 1),
          _buildBottomNavigationBarItem(Icons.add_card, 'Input', 2),
          _buildBottomNavigationBarItem(Icons.person, 'Profile', 3),
        ],
        selectedItemColor: const Color(0xFFDF5532),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  // Method to return the correct body content based on the current index
  Widget _getBodyContent() {
    switch (_currentIndex) {
      case 0:
        return Center(child: Text('Home Content'));
      case 1:
        return const Portfolio();
      case 2:
        return Center(child: Text('Input Content'));
      case 3:
        return Center(child: Text('Profile Content'));
      default:
        return const Project();
    }
  }

  // Custom BottomNavigationBarItem with an indicator
  BottomNavigationBarItem _buildBottomNavigationBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 5.0,
            width: _currentIndex == index ? 30.0 : 0.0,
            decoration: BoxDecoration(
              color: _currentIndex == index ? const Color(0xFFDF5532) : Colors.transparent,
              borderRadius: BorderRadius.circular(2.5),
            ),
          ),
          Icon(icon),
        ],
      ),
      label: label,
    );
  }
}
