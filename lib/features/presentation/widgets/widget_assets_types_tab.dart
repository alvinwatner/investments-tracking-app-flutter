import 'package:flutter/material.dart';
import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetAssetsTypesTab extends StatefulWidget {
  final Function(int?) onSelectedIndex;
  const WidgetAssetsTypesTab({
    super.key,
    required this.onSelectedIndex,
  });

  @override
  State<WidgetAssetsTypesTab> createState() => _WidgetAssetsTypesTabState();
}

class _WidgetAssetsTypesTabState extends State<WidgetAssetsTypesTab> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _CustomChip(
          title: 'Asset Class',
          isSelected: _selectedIndex == 0,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 0;
            });
            widget.onSelectedIndex(_selectedIndex);
          },
        ),
        _CustomChip(
          title: 'Entity',
          isSelected: _selectedIndex == 1,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 1;
            });
            widget.onSelectedIndex(_selectedIndex);
          },
        ),
        _CustomChip(
          title: 'Broker',
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
  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  const _CustomChip({
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
