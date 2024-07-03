import 'package:flutter/material.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetTimeFilterTab extends StatelessWidget {
  final Function(int)? onTap;
  const WidgetTimeFilterTab({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(1234)),
          color: BaseColor.materialcolorGray.shade200,
        ),
        child: TabBar(
          onTap: (value) {},
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
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(1234),
              ),
            ),
            color: Colors.white,
          ),
          tabs: const <Widget>[
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
    );
  }
}
