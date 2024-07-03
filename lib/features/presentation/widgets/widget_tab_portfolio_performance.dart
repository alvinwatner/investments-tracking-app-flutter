import 'package:flutter/material.dart';
import 'package:in_ai/core/util/sources/images.dart';
import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetTabPortfolioPerformances extends StatefulWidget {
  final Function(int?) onSelectedIndex;
  const WidgetTabPortfolioPerformances({
    super.key,
    required this.onSelectedIndex,
  });

  @override
  State<WidgetTabPortfolioPerformances> createState() =>
      _WidgetTabPortfolioPerformancesState();
}

class _WidgetTabPortfolioPerformancesState
    extends State<WidgetTabPortfolioPerformances> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _CustomChip(
          leading: Icon(
            Icons.language,
            color: BaseColor.materialcolorBrand.shade600,
          ),
          title: 'All',
          isSelected: _selectedIndex == 0,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 0;
            });
            widget.onSelectedIndex(_selectedIndex);
          },
        ),
        _CustomChip(
          leading: Image.asset('${BaseImages.imagePath}/flag_ausie.png'),
          title: 'Released gains',
          isSelected: _selectedIndex == 1,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 1;
            });
            widget.onSelectedIndex(_selectedIndex);
          },
        ),
        _CustomChip(
          leading: Image.asset('${BaseImages.imagePath}/flag_ausie.png'),
          title: 'Unreleased gains',
          isSelected: _selectedIndex == 2,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 2;
            });
            widget.onSelectedIndex(_selectedIndex);
          },
        ),
      ],
    );
  }
}

class _CustomChip extends StatelessWidget {
  final Widget leading;
  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  const _CustomChip({
    required this.leading,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1234),
      ),
      selectedColor: BaseColor.materialcolorBrand.shade50,
      side: isSelected ? null : BorderSide.none,
      label: Text(
        title,
        style: BaseTextStyle.textThemeBackup.titleSmall?.copyWith(
          color: isSelected
              ? BaseColor.materialcolorBrand.shade600
              : BaseColor.materialcolorGray.shade600,
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: isSelected,
      onSelected: onSelected,
    );
  }
}
