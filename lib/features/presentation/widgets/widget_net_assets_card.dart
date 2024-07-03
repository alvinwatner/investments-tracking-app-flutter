import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';
import 'package:in_ai/features/presentation/pages/asset_balances_page.dart';
import '../widgets/widget_chip_trending.dart';

class WidgetNetAssetsCard extends StatelessWidget {
  const WidgetNetAssetsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: BaseColor.materialcolorPurple.shade700,
        borderRadius: const BorderRadius.all(
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
                style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.more_vert_rounded,
                color: BaseColor.materialcolorPurple.shade300,
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
                    style:
                        BaseTextStyle.textThemeBackup.headlineMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8.0),
                  Row(
                    children: [
                      const WidgetChipTrendingOutlined('1.5'),
                      const Gap(10.0),
                      Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1234),
                          side: BorderSide(
                            color: BaseColor.materialcolorBrand.shade600,
                          ),
                        ),
                        padding: EdgeInsets.zero,
                        label: Text(
                          'last day',
                          style:
                              BaseTextStyle.textThemeBackup.bodySmall?.copyWith(
                            color: BaseColor.materialcolorGray.shade600,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AssetBalancesPage.routeName);
                },
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
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
              text: 'Gross assets: ',
              style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\$78,789,618',
                  style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Gap(12.0),
          RichText(
            text: TextSpan(
              text: 'Liabilities: ',
              style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\$4,020,000',
                  style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                    color: BaseColor.materialcolorDestructive.shade300,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const Gap(2.0),
        ],
      ),
    );
  }
}
