import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../aspect/constant/app_font_text_styles.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white, // Color of the line
            thickness: 1, // Thickness of the line
            indent: 10, // Left spacing
            endIndent: 10, // Right spacing
          ),
        ),
        Text(
          'OR',
          style: AppFontTextStyles.poppins(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Expanded(
          child: Divider(
            color: Colors.white, // Color of the line
            thickness: 1, // Thickness of the line
            indent: 10, // Left spacing
            endIndent: 10, // Right spacing
          ),
        ),
      ],
    );
  }
}
