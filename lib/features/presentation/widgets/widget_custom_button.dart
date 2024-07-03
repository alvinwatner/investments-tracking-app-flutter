import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetCustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget leading;
  final String title;
  const WidgetCustomButton({
    super.key,
    required this.onPressed,
    required this.leading,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: BaseColor.materialcolorGray.shade300,
          ),
          borderRadius: BorderRadius.circular(1234),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            leading,
            const Gap(10),
            Text(
              title,
              style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: BaseColor.materialcolorGray.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
