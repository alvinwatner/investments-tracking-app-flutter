import 'package:flutter/material.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetPortfolioPerformanceItem extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  final bool isLastItem;
  const WidgetPortfolioPerformanceItem({
    super.key,
    required this.title,
    required this.actions,
    this.isLastItem = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                    color: BaseColor.materialcolorGray.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: actions,
                ),
              ],
            ),
          ),
          !isLastItem ? const Divider() : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
