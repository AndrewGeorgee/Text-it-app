import 'package:flutter/material.dart';
import 'package:text_it_app/aspect/constant/strings.dart';

import '../../../aspect/constant/app_font_text_styles.dart';
import '../../../aspect/constant/assets.dart';
import '../../../aspect/constant/dimension_constants.dart';
import '../../../aspect/constant/ui_helper.dart';
import '../../widget/shered_widget/custom_button_with_background.dart';
import '../../widget/shered_widget/or_widget.dart';
import '../../widget/shered_widget/social_media.dart';

class GetStartView extends StatelessWidget {
  const GetStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.background),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: DimensionConstants.px30,
                horizontal: DimensionConstants.px20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    AppString.connectFriendsEasilyQuickly,
                    style: AppFontTextStyles.poppins(fontSize: 80),
                  ),
                  SizeBoxForHight(DimensionConstants.px20),
                  Text(
                    AppString
                        .ourChatAppIsThePerfectWayToStayConnectedWithFriendsAndFamily,
                    style: AppFontTextStyles.poppins(
                        fontSize: 18, color: Colors.white.withOpacity(0.5)),
                  ),
                  SizeBoxForHight(DimensionConstants.px20),
                  SocialMediaRow(),
                  SizeBoxForHight(DimensionConstants.px20),
                  const OrWidget(),
                  SizeBoxForHight(DimensionConstants.px20),
                  CustomTextButtonWithColorBackground(
                    text: AppString.signUpWithEmail,
                    textStyle: AppFontTextStyles.poppins(fontSize: 20),
                    onPressed: () {},
                  ),
                  SizeBoxForHight(DimensionConstants.px20),
                  RichText(
                    text: TextSpan(
                      text: '${AppString.existingAccount} ',
                      style: AppFontTextStyles.poppins(
                          fontSize: 15, color: Colors.white.withOpacity(0.5)),
                      children: <TextSpan>[
                        TextSpan(
                          text: AppString.login,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
