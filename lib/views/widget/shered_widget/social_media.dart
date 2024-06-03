
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCircleAvatar(
          onTap: () {
            // Handle Facebook tap
          },
          icon: FontAwesomeIcons.facebook,
        ),
        SizedBox(width: 20),
        _buildCircleAvatar(
          onTap: () {
            // Handle Google tap
          },
          icon: FontAwesomeIcons.google,
        ),
        SizedBox(width: 15),
        _buildCircleAvatar(
          onTap: () {
            // Handle Apple tap
          },
          icon: FontAwesomeIcons.apple,
        ),
      ],
    );
  }

  Widget _buildCircleAvatar({required VoidCallback onTap, required IconData icon}) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.white.withOpacity(0.2),
        child: FaIcon(
          icon,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}