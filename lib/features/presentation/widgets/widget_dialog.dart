import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Widget ini berfungsi menampilkan dialog sesuai dengan style native-nya masing-masing yaitu,
/// Material dan Cupertino.<br /><br />
///
/// [title] - judul dari dialog<br />
/// [content] - content message dari dialog<br />
/// [actionsAlertDialog] - list action untuk alert dialog. Umumnya pakai widget [TextButton]<br />
/// [actionsCupertinoDialog] - list action untuk cupertino dialog. Umumnya pakai widget [CupertinoDialogAction]<br />
/// [textAlignContentCupertino] - text align dari content message untuk dialog cupertino.
class WidgetDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget>? actionsAlertDialog;
  final List<Widget> actionsCupertinoDialog;
  final TextAlign textAlignContentCupertino;

  const WidgetDialog({
    super.key,
    required this.title,
    required this.content,
    this.actionsAlertDialog,
    this.actionsCupertinoDialog = const <Widget>[],
    this.textAlignContentCupertino = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(
          title,
        ),
        content: Text(
          content,
          textAlign: textAlignContentCupertino,
        ),
        actions: actionsCupertinoDialog,
      );
    } else {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        actions: actionsAlertDialog,
      );
    }
  }
}
