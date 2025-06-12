import 'package:flutter/material.dart';

import '../components/credit_card.dart';
import '../components/pie_chart.dart';
import '../components/search_bar.dart';
import '../widgets/app_bar.dart';
import '../widgets/app_drawer.dart';
import '../components/legend_item.dart';

class CreditCardsScreen extends StatelessWidget {
  const CreditCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar:  const CustomAppBar(title: 'Credit Cards'),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            const SearchSomething(),

            SizedBox(height: 30),

            // My Cards Section
            Text(
              'My Cards',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 16),

            // Credit Cards
            SizedBox(
              height: 200,
              child: PageView(
                controller: PageController(viewportFraction: 0.9),
                padEnds: false,
                children: [
                  CreditCard(
                    balance: '\$3,756',
                    cardHolder: 'Eddy Cusuma',
                    validThru: '12/22',
                    cardNumber: '3778 **** **** 1234',
                    gradientColors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                  ),
                  CreditCard(
                    balance: '\$5,756',
                    cardHolder: 'Eddy C',
                    validThru: '06/24',
                    cardNumber: '3778 **** **** 5678',
                    gradientColors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Card Expense Statistics Section
            Text(
              'Card Expense Statistics',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 20),

            // Pie Chart
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 200,
                height: 200,
                child: const MyPieChartPage(),
              ),
            ),

            SizedBox(height: 20),

            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // aligns rows to left
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      LegendItem(color: Color(0xFFE5E7EB), label: 'DBL Bank'),
                      SizedBox(width: 24),
                      LegendItem(color: Color(0xFF3B82F6), label: 'BRC Bank'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      LegendItem(color: Color(0xFF1E3A8A), label: 'ABM Bank'),
                      SizedBox(width: 20),
                      LegendItem(color: Color(0xFF60A5FA), label: 'MCP Bank'),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Card List Section
            Text(
              'Card List',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            
            SizedBox(height: 16),
            
            // Card List
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Card list items would be displayed here',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
