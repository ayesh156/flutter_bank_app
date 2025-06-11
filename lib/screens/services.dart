import 'package:flutter/material.dart';

import '../components/search_bar.dart';
import '../components/service_item.dart';
import '../widgets/app_bar.dart';
import '../widgets/app_drawer.dart';
import '../widgets/service_section.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: const CustomAppBar(title: 'Services'),
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
              Text(
                'Bank Services List',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 16),

              ServiceItem(
                icon: Icons.build,
                title: 'Business loans',
                subtitle: 'It is a long establisheds',
                iconColor: Color(0xFF1E3A8A),
                onPressed: () {
                  // handle view details tap
                },
              ),
              ServiceItem(
                icon: Icons.account_balance_wallet,
                title: 'Checking accounts',
                subtitle: 'It is a long establisheds',
                iconColor: Color(0xFF1E3A8A),
                onPressed: () {
                  // handle view details tap
                },
              ),
              ServiceItem(
                icon: Icons.savings,
                title: 'Savings accounts',
                subtitle: 'It is a long establisheds',
                iconColor: Color(0xFF1E3A8A),
                onPressed: () {
                  // handle view details tap
                },
              ),
              ServiceItem(
                icon: Icons.credit_card,
                title: 'Debit and credit cards',
                subtitle: 'It is a long establisheds',
                iconColor: Color(0xFF1E3A8A),
                onPressed: () {
                  // handle view details tap
                },
              ),
              ServiceItem(
                icon: Icons.security,
                title: 'Life Insurance',
                subtitle: 'It is a long establisheds',
                iconColor: Color(0xFF1E3A8A),
                onPressed: () {
                  // handle view details tap
                },
              ),
              ServiceItem(
                icon: Icons.business_center,
                title: 'Business loans',
                subtitle: 'It is a long establisheds',
                iconColor: Color(0xFF1E3A8A),
                onPressed: () {
                  // handle view details tap
                },
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
