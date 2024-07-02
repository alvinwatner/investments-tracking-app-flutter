import 'package:flutter/material.dart';

import 'package:pokemon/core/util/styles/colors.dart';

class WidgetIncomeOutlinedCard extends StatelessWidget {
  final List<Widget> children;
  const WidgetIncomeOutlinedCard({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: BaseColor.materialcolorGray.shade200),
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
