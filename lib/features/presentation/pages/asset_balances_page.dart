
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';
import 'package:in_ai/features/presentation/bloc/balances/balances_bloc.dart';
import 'package:in_ai/features/presentation/pages/portfolio_dashboard_page.dart';
import 'package:in_ai/features/presentation/widgets/widget_gross_income_card.dart';
import 'package:in_ai/features/presentation/widgets/widget_loading_center.dart';

import '../../../core/util/sources/images.dart';
import '../../../injection_container.dart';
import '../widgets/widget_app_bar.dart';
import '../widgets/widget_ask_ai_button.dart';
import '../widgets/widget_assets_types_tab.dart';
import '../widgets/widget_chip_trending.dart';
import '../widgets/widget_custom_button.dart';
import '../widgets/widget_custom_expandable_dummy.dart';
import '../widgets/widget_custom_expandable_tile.dart';
import '../widgets/widget_tab_countries.dart';
import '../widgets/widget_time_filter_tab.dart';

class AssetBalancesPage extends StatefulWidget {
  static const routeName = 'asset-balances';
  const AssetBalancesPage({super.key});

  @override
  State<AssetBalancesPage> createState() => _AssetBalancesPageState();
}

class _AssetBalancesPageState extends State<AssetBalancesPage> {
  final BalancesBloc _balancesBloc = sl<BalancesBloc>();

  @override
  void initState() {
    _balancesBloc.add(BalancesGetInitialDataTriggered());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _balancesBloc,
      child: Scaffold(
        appBar: const WidgetAppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Asset balances',
                style: BaseTextStyle.textThemeBackup.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: BaseColor.materialcolorGray.shade800,
                ),
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
              WidgetIncomeOutlinedCard(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Net asset',
                      style:
                          BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                        color: BaseColor.materialcolorGray.shade600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          PortfolioDashboardPage.routeName,
                        );
                      },
                      child: Icon(
                        Icons.more_vert_rounded,
                        color: BaseColor.materialcolorGray.shade300,
                      ),
                    ),
                  ],
                ),
                const Gap(12.0),
                Text(
                  '\$74,769,618',
                  style: BaseTextStyle.textThemeBackup.headlineMedium?.copyWith(
                    color: BaseColor.materialcolorGray.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8.0),
                Row(
                  children: [
                    Text(
                      'Returns: ',
                      style:
                          BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    const Gap(4.0),
                    Text(
                      '+\$3,285,372',
                      style:
                          BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                        color: BaseColor.materialcolorSuccess,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    const Gap(4.0),
                    const WidgetChipTrending('4.6'),
                  ],
                ),
                const Gap(
                  12.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Release gains: ',
                    style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$78,789,618',
                        style:
                            BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                          color: BaseColor.materialcolorSuccess.shade700,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(12.0),
                RichText(
                  text: TextSpan(
                    text: 'Unreleased gains: ',
                    style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$2,066,372',
                        style:
                            BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                          color: BaseColor.materialcolorSuccess.shade700,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(14.0),
                WidgetTimeFilterTab(
                  onTap: (int index) {},
                ),
              ]),
              const Gap(16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Group by:',
                    style: BaseTextStyle.textThemeBackup.titleSmall?.copyWith(
                      color: BaseColor.materialcolorGray.shade600,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  WidgetAssetsTypesTab(
                    onSelectedIndex: (int? index) {},
                  ),
                ],
              ),
              const Gap(16.0),
              BlocBuilder<BalancesBloc, BalancesState>(
                builder: (context, state) {
                  if (state is BalancesLoadInProgress) {
                    return const WidgetLoadingCenter();
                  }
                  if (state is BalancesLoadSuccess) {
                    return Column(
                      children: [
                        WidgetCustomExpandableTile(
                          data: state.resultResponse,
                          isExpanded: true,
                          color: BaseColor.materialcolorCyan.shade500,
                          trailingColor: BaseColor.materialcolorCyan.shade500,
                        ),
                      ],
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              const Gap(16.0),
              WidgetCustomExpandableTileDummy(
                color: BaseColor.materialcolorOrange.shade500,
                trailingColor: BaseColor.materialcolorOrange.shade600,
                title: 'Managed funds',
                trailing: '\$12,427,264',
              ),
              const Gap(16.0),
              WidgetCustomExpandableTileDummy(
                color: BaseColor.materialcolorWarning.shade300,
                trailingColor: BaseColor.materialcolorWarning.shade500,
                title: 'Listed shares',
                trailing: '\$8,903,000',
              ),
              const Gap(16.0),
              WidgetCustomExpandableTileDummy(
                color: BaseColor.materialcolorGray.shade500,
                trailingColor: BaseColor.materialcolorGray.shade600,
                title: 'Unlisted shares',
                trailing: '\$8,903,000',
              ),
              const Gap(16.0),
              WidgetCustomExpandableTileDummy(
                color: BaseColor.materialcolorOrange.shade300,
                trailingColor: BaseColor.materialcolorOrange.shade500,
                title: 'Private equity',
                trailing: '\$8,903,000',
              ),
              const Gap(16.0),
              WidgetCustomExpandableTileDummy(
                color: BaseColor.materialcolorGray.shade400,
                trailingColor: BaseColor.materialcolorGray.shade600,
                title: 'Fixed income',
                trailing: '\$8,903,000',
              ),
              const Gap(16.0),
              WidgetCustomExpandableTileDummy(
                color: BaseColor.materialcolorTeal.shade500,
                trailingColor: BaseColor.materialcolorTeal.shade600,
                title: 'Private property',
                trailing: '\$8,903,000',
              ),
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
              const Gap(60),
            ],
          ),
        ),
      ),
    );
  }
}
