import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

/// A base class for trending chips with common styling.
///
/// This class can be extended to create different variants of trending chips.
class BaseWidgetChipTrending extends StatelessWidget {
  /// The title to be displayed on the chip.
  final String title;

  /// The color of the icon.
  final Color iconColor;

  /// The color of the text.
  final Color textColor;

  /// The background color of the chip.
  final Color backgroundColor;

  /// The border side of the chip.
  final BorderSide borderSide;

  /// Creates a [BaseWidgetChipTrending] with the given properties.
  const BaseWidgetChipTrending({
    required this.title,
    required this.iconColor,
    required this.textColor,
    required this.backgroundColor,
    required this.borderSide,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1234),
        side: borderSide,
      ),
      backgroundColor: backgroundColor,
      padding: EdgeInsets.zero,
      side: borderSide,
      label: Row(
        children: [
          Icon(
            Icons.trending_up_rounded,
            color: iconColor,
            size: 19,
          ),
          const Gap(2.0),
          Text(
            '+$title%',
            style: BaseTextStyle.textThemeBackup.bodySmall?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

/// A widget that displays a trending chip with an outlined style.
///
/// The chip displays the given [title] with a trending up icon and an outlined border.
class WidgetChipTrendingOutlined extends StatelessWidget {
  /// The title to be displayed on the chip.
  final String title;

  /// Creates a [WidgetChipTrendingOutlined] with the given [title].
  const WidgetChipTrendingOutlined(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidgetChipTrending(
      title: title,
      iconColor: BaseColor.materialcolorSuccess.shade500,
      textColor: BaseColor.materialcolorSuccess.shade500,
      backgroundColor: Colors.transparent,
      borderSide: BorderSide.none,
    );
  }
}

/// A widget that displays a trending chip with a filled background.
///
/// The chip displays the given [title] with a trending up icon and a solid background color.
class WidgetChipTrending extends StatelessWidget {
  /// The title to be displayed on the chip.
  final String title;

  /// Creates a [WidgetChipTrending] with the given [title].
  const WidgetChipTrending(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseWidgetChipTrending(
      title: title,
      iconColor: Colors.white,
      textColor: Colors.white,
      backgroundColor: BaseColor.materialcolorSuccess,
      borderSide: BorderSide.none,
    );
  }
}
