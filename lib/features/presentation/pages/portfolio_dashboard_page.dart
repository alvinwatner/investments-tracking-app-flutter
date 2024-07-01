import 'package:flutter/material.dart';

import 'package:pokemon/core/util/styles/colors.dart';
import 'package:pokemon/core/util/styles/text.dart';

import '../widgets/widget_add_tab_menu.dart';
import '../widgets/widget_app_bar.dart';
import '../widgets/widget_ask_ai_button.dart';
import '../widgets/widget_tab_countries.dart';

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
      appBar: WidgetAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
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
            const SizedBox(
              height: 16.0,
            ),
            AskAIButton(
              onPressed: () {},
            ),
            const SizedBox(
              height: 16.0,
            ),
            WidgetTabCountries(
              onSelectedIndex: (index) {},
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: BaseColor.materialcolorPurple.shade700,
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Net assets',
                        style:
                            BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: BaseColor.materialcolorPurple.shade300,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
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
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Chip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1234),
                                  side: BorderSide(
                                    color:
                                        BaseColor.materialcolorBrand.shade600,
                                  ),
                                ),
                                padding: EdgeInsets.zero,
                                label: Row(
                                  children: [
                                    Icon(
                                      Icons.trending_up_rounded,
                                      color: BaseColor
                                          .materialcolorSuccess.shade500,
                                      size: 19,
                                      weight: 2,
                                    ),
                                    const SizedBox(
                                      width: 2.0,
                                    ),
                                    Text(
                                      '+0.1%',
                                      style: BaseTextStyle
                                          .textThemeBackup.bodySmall
                                          ?.copyWith(
                                        color: BaseColor
                                            .materialcolorSuccess.shade500,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Chip(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1234),
                                  side: BorderSide(
                                    color:
                                        BaseColor.materialcolorBrand.shade600,
                                  ),
                                ),
                                padding: EdgeInsets.zero,
                                label: Text(
                                  'last day',
                                  style: BaseTextStyle.textThemeBackup.bodySmall
                                      ?.copyWith(
                                    color: BaseColor.materialcolorGray.shade600,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.white,
                        size: 36,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Gross assets: ',
                      style:
                          BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$78,789,618',
                          style: BaseTextStyle.textThemeBackup.titleMedium
                              ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Liabilities: ',
                      style:
                          BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$4,020,000',
                          style: BaseTextStyle.textThemeBackup.titleMedium
                              ?.copyWith(
                            color: BaseColor.materialcolorDestructive.shade300,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            WidgetsAddTabMenu(),
          ],
        ),
      ),
    );
  }
}
