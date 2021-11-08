//snackbar function

import 'package:flutter/material.dart';

snackbar() {
  return SnackBar(
    content: Text('Email deleted'),
    action: SnackBarAction(
      label: 'Undo',
      textColor: Colors.white,
      onPressed: () {},
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    backgroundColor: Colors.blue,
  );
}
