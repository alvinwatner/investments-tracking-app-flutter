import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetsAddTabMenu extends StatefulWidget {
  const WidgetsAddTabMenu({
    super.key,
  });

  @override
  State<WidgetsAddTabMenu> createState() => _WidgetsAddTabMenuState();
}

class _WidgetsAddTabMenuState extends State<WidgetsAddTabMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _CustomChip(
          icon: Icons.volunteer_activism_outlined,
          title: 'Add new asset',
          isSelected: _selectedIndex == 0,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 0;
            });
          },
        ),
        const Gap(2),
        _CustomChip(
          icon: Icons.domain_add_outlined,
          title: 'Add new entity',
          isSelected: _selectedIndex == 1,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 1;
            });
          },
        ),
      ],
    );
  }
}

class _CustomChip extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final Function(bool) onSelected;

  const _CustomChip({
    required this.icon,
    required this.title,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      labelPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1234),
        side: BorderSide(
          color: isSelected
              ? BaseColor.materialcolorBrand.shade600
              : BaseColor.materialcolorGray.shade600,
        ),
      ),
      selectedColor:
          isSelected ? BaseColor.materialcolorBrand.shade600 : Colors.white,
      side: isSelected ? BorderSide.none : null,
      label: Row(
        children: [
          Icon(
            icon,
            color: isSelected
                ? Colors.white
                : BaseColor.materialcolorGray.shade600,
          ),
          const Gap(10),
          Text(
            title,
            style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: isSelected
                  ? Colors.white
                  : BaseColor.materialcolorGray.shade600,
            ),
          ),
        ],
      ),
      selected: true,
      onSelected: onSelected,
    );
  }
}
