import 'package:flutter/material.dart';
import 'package:in_ai/core/util/sources/images.dart';
import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetTabCountries extends StatefulWidget {
  final Function(int?) onSelectedIndex;
  const WidgetTabCountries({
    super.key,
    required this.onSelectedIndex,
  });

  @override
  State<WidgetTabCountries> createState() => _WidgetTabCountriesState();
}

class _WidgetTabCountriesState extends State<WidgetTabCountries> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          title: 'Australia',
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
          title: 'USA',
          isSelected: _selectedIndex == 2,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 2;
            });
            widget.onSelectedIndex(_selectedIndex);
          },
        ),
        _CustomChip(
          leading: Image.asset('${BaseImages.imagePath}/flag_ausie.png'),
          title: 'Europe',
          isSelected: _selectedIndex == 3,
          onSelected: (bool selected) {
            setState(() {
              _selectedIndex = 3;
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
        side: BorderSide(
          color: BaseColor.materialcolorBrand.shade600,
        ),
      ),
      side: isSelected ? null : BorderSide.none,
      avatar: leading,
      label: Text(
        title,
        style: BaseTextStyle.textThemeBackup.titleSmall,
      ),
      selected: isSelected,
      onSelected: onSelected,
    );
  }
}
