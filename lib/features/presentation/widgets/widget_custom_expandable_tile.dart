import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';
import 'package:in_ai/features/data/models/result/result_response.dart';

import '../../../core/util/sources/images.dart';

class WidgetCustomExpandableTile extends StatefulWidget {
  final ResultResponse data;
  final Color color;
  final Color trailingColor;
  final bool isExpanded;

  const WidgetCustomExpandableTile({
    super.key,
    required this.color,
    required this.data,
    required this.trailingColor,
    this.isExpanded = false,
  });

  @override
  State<WidgetCustomExpandableTile> createState() =>
      _WidgetCustomExpandableTileState();
}

class _WidgetCustomExpandableTileState extends State<WidgetCustomExpandableTile>
    with SingleTickerProviderStateMixin {
  late bool _isExpanded;
  late AnimationController _animationController;
  late Animation<double> _iconTurns;

  @override
  void initState() {
    _isExpanded = widget.isExpanded;
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _iconTurns = Tween<double>(begin: 0.0, end: 0.5)
        .animate(_animationController); // This represents a 180 degree turn
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.all(
              Radius.circular(1234),
            ),
          ),
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: _toggleExpansion,
                icon: RotationTransition(
                  turns: _iconTurns,
                  child: Icon(
                    _isExpanded ? Icons.remove : Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                widget.data.category ?? '',
                style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              Chip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1234),
                ),
                side: BorderSide.none,
                backgroundColor: Colors.white,
                label: Text(
                  widget.data.value ?? '',
                  style: BaseTextStyle.textThemeBackup.bodySmall?.copyWith(
                    color: widget.trailingColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              )
            ],
          ),
        ),
        const Gap(10),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: _isExpanded
              ? Column(
                  children: List.generate(
                    3,
                    (index) => _BankExpandableTile(
                      data: widget.data.data ?? const ResultData(),
                    ),
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }
}

class _BankExpandableTile extends StatelessWidget {
  final ResultData data;
  const _BankExpandableTile({required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
          decoration: BoxDecoration(
            color: BaseColor.materialcolorGray.shade100,
            border: Border(
              bottom: BorderSide(color: BaseColor.materialcolorGray.shade300),
            ),
          ),
          child: Row(
            children: [
              Image.asset('${BaseImages.imagePath}/nab_asset.png'),
              const Gap(2),
              Text(
                data.name ?? '',
                style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                  color: BaseColor.materialcolorGray.shade600,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Spacer(),
              Text(
                data.value ?? '',
                style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                  color: BaseColor.materialcolorBrand.shade500,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        ...List.generate(
          data.subData?.length ?? 0,
          (index) => _CustomListTile(
            isLastItem: index == data.subData?.length,
            data: data.subData?[index] ?? const ResultSubData(),
          ),
        ),
      ],
    );
  }
}

// '\$6,747,000', 'NAB',

class _CustomListTile extends StatelessWidget {
  final ResultSubData data;
  final bool isLastItem;
  const _CustomListTile({
    this.isLastItem = false,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: BaseColor.materialcolorGray.shade50,
          ),
          child: Row(
            children: [
              Flexible(
                flex: 4,
                child: Text(
                  data.name ?? '',
                  style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                    color: BaseColor.materialcolorGray.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              Flexible(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      data.value ?? '',
                      style: BaseTextStyle.textThemeBackup.bodyMedium?.copyWith(
                        color: BaseColor.materialcolorBrand.shade500,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: BaseColor.materialcolorBrand.shade500,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!isLastItem) const Divider(),
      ],
    );
  }
}
