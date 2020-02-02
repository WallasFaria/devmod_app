import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertConfirm {
  static void show(context,
      {Widget title,
      Widget content,
      String cancelText,
      String confirmText,
      Function() confirmAction}) {
    final actions = <Widget>[
      FlatButton(
          child: Text(cancelText),
          onPressed: () => Navigator.of(context).pop()),
      FlatButton(
          child: Text(confirmText),
          onPressed: () {
            Navigator.of(context).pop();
            confirmAction();
          })
    ];

    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Platform.isIOS
            ? CupertinoAlertDialog(
                title: title, content: content, actions: actions)
            : AlertDialog(title: title, content: content, actions: actions);
      },
    );
  }
}
