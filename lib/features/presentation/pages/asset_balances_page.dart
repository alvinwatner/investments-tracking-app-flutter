import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:pokemon/core/util/styles/colors.dart';
import 'package:pokemon/core/util/styles/text.dart';
import 'package:pokemon/features/presentation/widgets/widget_gross_income_card.dart';
import 'package:pokemon/features/presentation/widgets/widget_net_assets_card.dart';
import 'package:pokemon/features/presentation/widgets/widget_tab_portfolio_performance.dart';

import '../../../core/util/sources/images.dart';
import '../widgets/widget_add_tab_menu.dart';
import '../widgets/widget_app_bar.dart';
import '../widgets/widget_ask_ai_button.dart';
import '../widgets/widget_chip_trending.dart';
import '../widgets/widget_custom_button.dart';
import '../widgets/widget_portfolio_performance_item.dart';
import '../widgets/widget_tab_countries.dart';

class AssetBalancesPage extends StatefulWidget {
  static const routeName = 'asset-balances';
  const AssetBalancesPage({super.key});

  @override
  State<AssetBalancesPage> createState() => _AssetBalancesPageState();
}

class _AssetBalancesPageState extends State<AssetBalancesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Portfolio Dashboard',
                  style: BaseTextStyle.textThemeBackup.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: BaseColor.materialcolorGray.shade800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 32,
                      color: BaseColor.materialcolorGray.shade600,
                    ),
                  ),
                ),
              ],
            ),
            Gap(16.0),
            AskAIButton(
              onPressed: () {},
            ),
            Gap(16.0),
            WidgetTabCountries(
              onSelectedIndex: (index) {},
            ),
            Gap(16.0),
            WidgetNetAssetsCard(),
            Gap(16.0),
            WidgetsAddTabMenu(),
            Gap(16.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Portfolio performance',
                style: BaseTextStyle.textThemeBackup.titleLarge?.copyWith(
                  color: BaseColor.materialcolorGray.shade600,
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
            Gap(16.0),
            WidgetTabPortfolioPerformances(
              onSelectedIndex: (int? index) {},
            ),
            // Gap(16.0),
            WidgetPortfolioPerformanceItem(
              title: 'Month',
              actions: [
                Text(
                  '+\$401,321',
                  style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                    color: BaseColor.materialcolorGray.shade700,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Gap(8),
                WidgetChipTrending('0.5'),
              ],
            ),
            WidgetPortfolioPerformanceItem(
              title: 'Quarter',
              actions: [
                Text(
                  '+\$814,603',
                  style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                    color: BaseColor.materialcolorGray.shade700,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Gap(8),
                WidgetChipTrending('1.1'),
              ],
            ),
            WidgetPortfolioPerformanceItem(
              isLastItem: true,
              title: 'FY 2024',
              actions: [
                Text(
                  '+\$3,285,372',
                  style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                    color: BaseColor.materialcolorGray.shade700,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Gap(8),
                WidgetChipTrending('4.6'),
              ],
            ),
            Gap(16),
            WidgetGrossIncomeCard(),
            Gap(16),
            Text(
              'AI suggested queries',
              style: BaseTextStyle.textThemeBackup.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: WidgetCustomButton(
                onPressed: () {},
                leading: Image.asset(
                  '${BaseImages.imagePath}/magic-wand.png',
                  color: BaseColor.materialcolorGray.shade600,
                ),
                title: 'Listed shares balances per month?',
              ),
            ),
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: WidgetCustomButton(
                onPressed: () {},
                leading: Image.asset(
                  '${BaseImages.imagePath}/magic-wand.png',
                  color: BaseColor.materialcolorGray.shade600,
                ),
                title: 'Liquid assets per account?',
              ),
            ),

            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: WidgetCustomButton(
                onPressed: () {},
                leading: Image.asset(
                  '${BaseImages.imagePath}/magic-wand.png',
                  color: BaseColor.materialcolorGray.shade600,
                ),
                title: 'What are current portfolio risks?',
              ),
            ),

            Gap(16),
            Divider(),
            Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WidgetCustomButton(
                  onPressed: () {},
                  leading: Icon(
                    Icons.tune_outlined,
                    color: BaseColor.materialcolorGray.shade600,
                  ),
                  title: 'Customise',
                ),
                Gap(10),
                WidgetCustomButton(
                  onPressed: () {},
                  leading: Icon(
                    Icons.cloud_upload_outlined,
                    color: BaseColor.materialcolorGray.shade600,
                  ),
                  title: 'Add Widget',
                ),
              ],
            ),
            Gap(60),
          ],
        ),
      ),
    );
  }
}
