import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:in_ai/features/presentation/pages/asset_balances_page.dart';
import 'package:in_ai/features/presentation/pages/portfolio_dashboard_page.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PortfolioDashboardPage.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const PortfolioDashboardPage(),
        );
      case AssetBalancesPage.routeName:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AssetBalancesPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Text('page_not_found'.tr()),
            ),
          ),
        );
    }
  }
}
