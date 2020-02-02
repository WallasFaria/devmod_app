import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

enum ToastType { Info, Success, Warning, Error }

class Toast {
  static void show(String text, {ToastType type = ToastType.Info}) {
    const colors = {
      ToastType.Info: Colors.blue,
      ToastType.Success: Colors.green,
      ToastType.Warning: Colors.yellow,
      ToastType.Error: Colors.red,
    };

    BotToast.showText(
      text: text,
      contentColor: colors[type],
      clickClose: true,
      duration: Duration(seconds: 2),
    );
  }
}
