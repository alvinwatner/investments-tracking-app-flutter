import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// widget ini berfungsi untuk menampilkan widget [CircularProgressIndicator]
/// dan [CupertinoActivityIndicator] secara fullscreen sesuai dengan style material dan cupertino.<br /><br />
///
/// [opacity] - tingkat transparansi dari background
class WidgetLoadingCenterFullScreen extends StatelessWidget {
  final double opacity;

  const WidgetLoadingCenterFullScreen({super.key, this.opacity = 0.5});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(opacity),
      child: Center(
        child: Platform.isIOS
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const CupertinoActivityIndicator(
                      color: Colors.red,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'loading'.tr(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
