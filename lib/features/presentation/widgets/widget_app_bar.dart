import 'package:flutter/material.dart';

import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/core/util/styles/text.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: RichText(
        text: TextSpan(
          text: 'In',
          style: BaseTextStyle.textThemeBackup.titleLarge?.copyWith(
            color: BaseColor.materialcolorBrand.shade600,
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'AI',
              style: BaseTextStyle.textThemeBackup.titleLarge?.copyWith(
                color: BaseColor.materialcolorGray.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2021/04/25/14/30/man-6206540_960_720.jpg'),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: BaseColor.materialcolorGray.shade600,
            ),
          ),
        )
      ],
    );
  }
}
