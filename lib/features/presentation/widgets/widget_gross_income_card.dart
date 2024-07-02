import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:pokemon/core/util/styles/colors.dart';
import 'package:pokemon/core/util/styles/text.dart';
import '../widgets/widget_chip_trending.dart';

class WidgetGrossIncomeCard extends StatelessWidget {
  const WidgetGrossIncomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        // color: BaseColor.materialcolorPurple.shade700,
        border: Border.all(color: BaseColor.materialcolorGray.shade200),
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
                'Gross income',
                style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
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
          Gap(12.0),
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
                      color: BaseColor.materialcolorGray.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(8.0),
                  Row(
                    children: [
                      Icon(
                        Icons.trending_up_rounded,
                        color: BaseColor.materialcolorSuccess,
                        size: 19,
                      ),
                      Gap(2.0),
                      Text(
                        '+4.4%',
                        style:
                            BaseTextStyle.textThemeBackup.bodySmall?.copyWith(
                          color: BaseColor.materialcolorSuccess,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Gap(10.0),
                      Text(
                        'vs last day',
                        style:
                            BaseTextStyle.textThemeBackup.bodySmall?.copyWith(
                          color: BaseColor.materialcolorGray.shade600,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(1234)),
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
          Gap(
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
                  style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                    color: BaseColor.materialcolorDestructive.shade900,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Gap(12.0),
          RichText(
            text: TextSpan(
              text: 'Net income: ',
              style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\$4,020,000',
                  style: BaseTextStyle.textThemeBackup.titleMedium?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Gap(8.0),
          DefaultTabController(
            initialIndex: 1,
            length: 4,
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(1234)),
                color: BaseColor.materialcolorGray.shade200,
              ),
              child: TabBar(
                labelStyle: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                  color: BaseColor.materialcolorBrand.shade600,
                  fontWeight: FontWeight.w700,
                ),
                unselectedLabelStyle:
                    BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                  color: BaseColor.materialcolorGray.shade600,
                  fontWeight: FontWeight.w700,
                ),
                indicatorPadding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 0.0,
                ),
                padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1234),
                    ),
                  ),
                  color: Colors.white,
                ),
                tabs: <Widget>[
                  Tab(
                    text: 'Day',
                  ),
                  Tab(
                    text: 'Month',
                  ),
                  Tab(
                    text: 'Quarter',
                  ),
                  Tab(
                    text: 'FY 2024',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
