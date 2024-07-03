import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

import '../../../core/util/sources/images.dart';
import '../../../core/util/styles/colors.dart';
import '../../../core/util/styles/text.dart';

class AskAIButton extends StatelessWidget {
  final void Function() onPressed;
  const AskAIButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: BaseColor.materialcolorGray.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1234),
              ),
            ),
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('${BaseImages.imagePath}/magic-wand.png'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Ask AI assistant',
                    style: BaseTextStyle.textThemeBackup.titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Image.asset('${BaseImages.imagePath}/arrow-right.png'),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Row(
            children: [
              Text(
                'E.g., ',
                style: BaseTextStyle.textThemeBackup.bodyMedium
                    ?.copyWith(color: Colors.black),
              ),
              TypeWriter.text(
                'How much liquid assets I have in US account?',
                repeat: true,
                enabled: true,
                duration: const Duration(milliseconds: 150),
                style: BaseTextStyle.textThemeBackup.bodyMedium
                    ?.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
