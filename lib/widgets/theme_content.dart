import 'package:flutter/material.dart';
import 'package:Clima/widgets/Custom_text.dart';
import 'package:Clima/widgets/line.dart';
import 'package:Clima/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:Clima/theme.dart';

final List<String> themeItems = [
  'Light',
  'Dark',
  'Slatemist',
  'System',
];

class ThemeContent extends StatefulWidget {
  @override
  State<ThemeContent> createState() => _ThemeContentState();
}

class _ThemeContentState extends State<ThemeContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: themeItems.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              print('${themeItems[index]} has been pressed');
              Provider.of<ThemeProvider>(context, listen: false)
                  .toggleTheme(AppTheme.values[index]);
              Navigator.of(context).pop();
              print('${AppTheme.values[index]} has been selscted');
            });
          },
          child: Column(
            children: [
              Line(colour: Theme.of(context).dividerTheme.color ?? Colors.grey),
              CustomText(themeItems[index], colour: Colors.white),
            ],
          ),
        );
      },
    );
  }
}
