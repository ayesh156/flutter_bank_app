import 'package:flutter/material.dart';

import '../widgets/active_loans_section.dart';
import '../widgets/app_bar.dart';
import '../components/search_bar.dart';
import '../widgets/summary_section.dart';
import '../widgets/app_drawer.dart';

class Loans extends StatelessWidget {
  const Loans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: const CustomAppBar(title: 'Loans'),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Section
              SearchSomething(),

              SizedBox(height: 24),

              // Summary Cards Section
              SummarySection(),

              SizedBox(height: 32),

              // Active Loans Section
              ActiveLoansSection(),
            ],
          ),
        ),
      ),
    );
  }
}
