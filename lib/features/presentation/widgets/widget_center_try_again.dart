import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:in_ai/core/util/styles/colors.dart';
import 'package:in_ai/features/presentation/widgets/widget_primary_button.dart';

/// Widget ini berfungsi untuk menampilkan keterangan proses gagal dan terdapat widget [ElevatedButton] ditengah-tengah
/// untuk memuat ulang prosesnya.<br /><br />
///
/// [message] - pesan yang akan ditampilkan didalam widget ini.<br />
/// [onPressed]  fungsi yang dijalankan ketika widget [ElevatedButton] di-tap.
class WidgetCenterTryAgain extends StatelessWidget {
  final String message;
  final Function() onPressed;

  const WidgetCenterTryAgain({super.key, 
    required this.message,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var isConnectionError = message == 'connection_error'.tr();
    var backgroundColorButton = BaseColor.materialcolorBlue.shade200;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                isConnectionError ? 'connection_lost'.tr() : 'oh_no'.tr(),
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                message,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 16),
            WidgetPrimaryButton(
              textColor: Colors.white,
              backgroundColor: backgroundColorButton,
              onPressed: onPressed,
              borderRadius: 8,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.repeat,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'try_again'.tr(),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
