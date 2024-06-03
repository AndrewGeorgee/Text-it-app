import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:text_it_app/aspect/constant/strings.dart';

import '../../../aspect/constant/app_font_text_styles.dart';
import '../../../aspect/constant/ui_helper.dart';
import '../../widget/shered_widget/custom_button_with_background.dart';
import '../../widget/shered_widget/or_widget.dart';

class GetStartView extends StatelessWidget {
  const GetStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/Splash.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    AppString.connectFriendsEasilyQuickly,
                    style: AppFontTextStyles.poppins(fontSize: 80),
                  ),
                 SizeBoxForHight(20),
                  Text(
                    AppString
                        .ourChatAppIsThePerfectWayToStayConnectedWithFriendsAndFamily,
                    style: AppFontTextStyles.poppins(
                        fontSize: 18, color: Colors.white.withOpacity(0.5)),
                  ),
                                 SizeBoxForHight(20),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: const FaIcon(FontAwesomeIcons.facebook,
                            color: Colors.white, size: 40),
                      ),
                                      SizeBoxForWight(20),

                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: const FaIcon(FontAwesomeIcons.google,
                            color: Colors.white, size: 40),
                      ),
                      SizeBoxForWight(15),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: const FaIcon(FontAwesomeIcons.apple,
                            color: Colors.white, size: 40),
                      ),
                    ],
                  ),
                 SizeBoxForHight(20),
                  const OrWidget(),
                    SizeBoxForHight(20),
                  CustomTextButtonWithColorBackground(
                    text: AppString.signUpWithEmail,
                    textStyle: AppFontTextStyles.poppins(fontSize: 20),
                    onPressed: () {},
                  ),
                   SizeBoxForHight(20),
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
