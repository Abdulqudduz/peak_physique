import 'package:flutter/material.dart';

import 'package:Clima/widgets/theme_content.dart';

Future selectTheme(dynamic context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.zero,
        title: Center(child: Text('Theme')),
        content: ThemeContent(),
      ),
    );
