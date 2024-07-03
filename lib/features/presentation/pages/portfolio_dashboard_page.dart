import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';
import 'package:in_ai/features/presentation/widgets/widget_gross_income_card.dart';
import 'package:in_ai/features/presentation/widgets/widget_net_assets_card.dart';
import 'package:in_ai/features/presentation/widgets/widget_tab_portfolio_performance.dart';

import '../../../core/util/sources/images.dart';
import '../widgets/widget_add_tab_menu.dart';
import '../widgets/widget_app_bar.dart';
import '../widgets/widget_ask_ai_button.dart';
import '../widgets/widget_chip_trending.dart';
import '../widgets/widget_custom_button.dart';
import '../widgets/widget_portfolio_performance_item.dart';
import '../widgets/widget_tab_countries.dart';
import '../widgets/widget_time_filter_tab.dart';

class PortfolioDashboardPage extends StatefulWidget {
  static const routeName = 'portfolio-dashbaord';
  const PortfolioDashboardPage({super.key});

  @override
  State<PortfolioDashboardPage> createState() => _PortfolioDashboardPageState();
}

class _PortfolioDashboardPageState extends State<PortfolioDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WidgetAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
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
            const Gap(16.0),
            AskAIButton(
              onPressed: () {},
            ),
            const Gap(16.0),
            WidgetTabCountries(
              onSelectedIndex: (index) {},
            ),
            const Gap(16.0),
            const WidgetNetAssetsCard(),
            const Gap(16.0),
            const WidgetsAddTabMenu(),
            const Gap(16.0),
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
            const Gap(16.0),
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
                const Gap(8),
                const WidgetChipTrending('0.5'),
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
                const Gap(8),
                const WidgetChipTrending('1.1'),
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
                const Gap(8),
                const WidgetChipTrending('4.6'),
              ],
            ),
            const Gap(16),
            WidgetIncomeOutlinedCard(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gross income',
                      style:
                          BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                        color: BaseColor.materialcolorGray.shade600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: BaseColor.materialcolorGray.shade300,
                    ),
                  ],
                ),
                const Gap(12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$74,769,618',
                          style: BaseTextStyle.textThemeBackup.headlineMedium
                              ?.copyWith(
                            color: BaseColor.materialcolorGray.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(8.0),
                        Row(
                          children: [
                            Icon(
                              Icons.trending_up_rounded,
                              color: BaseColor.materialcolorSuccess,
                              size: 19,
                            ),
                            const Gap(2.0),
                            Text(
                              '+4.4%',
                              style: BaseTextStyle.textThemeBackup.bodySmall
                                  ?.copyWith(
                                color: BaseColor.materialcolorSuccess,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const Gap(10.0),
                            Text(
                              'vs last day',
                              style: BaseTextStyle.textThemeBackup.bodySmall
                                  ?.copyWith(
                                color: BaseColor.materialcolorGray.shade600,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(1234)),
                        color: BaseColor.materialcolorBrand.shade50,
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: BaseColor.materialcolorGray.shade600,
                        size: 36,
                      ),
                    )
                  ],
                ),
                const Gap(
                  12.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Less expenses: ',
                    style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$78,789,618',
                        style:
                            BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                          color: BaseColor.materialcolorDestructive.shade900,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(12.0),
                RichText(
                  text: TextSpan(
                    text: 'Net income: ',
                    style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$4,020,000',
                        style:
                            BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(14.0),
                WidgetTimeFilterTab(
                  onTap: (int index) {},
                ),
              ],
            ),
            const Gap(16),
            Text(
              'AI suggested queries',
              style: BaseTextStyle.textThemeBackup.bodyLarge?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Gap(16),
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
            const Gap(16),
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
            const Gap(16),
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

            const Gap(16),
            const Divider(),
            const Gap(16),
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
                const Gap(10),
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
            const Gap(60),
          ],
        ),
      ),
    );
  }
}
