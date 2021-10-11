import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/Widgets/my_textformfield.dart';
import 'package:e_shop/stylies/signup_screen.dart';
import 'package:e_shop/svgImages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  Widget buildLogoTop() {
    return Column(
      children: [
        Image.asset(
          'assets/images/Logo.png',
          height: 150,
        ),
        Column(
          children: [
            MyTextFormField(
              obscureText: false,
              hintText: "Name",
            ),
            MyTextFormField(
              obscureText: false,
              hintText: "E-mail",
            ),
            MyTextFormField(
              obscureText: false,
              hintText: "Mobile number",
            ),
            MyTextFormField(
              obscureText: true,
              hintText: "Password",
            ),
          ],
        ),
      ],
    );
  }

  Widget buttonCreate(BuildContext ctx) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(ctx, '/mybottombarpage');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10),
          primary: AppColors.baseDarkPinkColor,
        ),
        child: const Text(
          "Create an account",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget termCodition() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
            text: "By sigining up you agress to out\n\t",
            style: SignUpScreenStyles.signupAgreestyle,
            children: [
              TextSpan(
                text: "term\t",
                style: SignUpScreenStyles.termtextStyle,
              ),
              const TextSpan(
                text: "and\t",
                style: TextStyle(fontSize: 18.0),
              ),
              TextSpan(
                text: "Condition of Use",
                style: SignUpScreenStyles.termtextStyle,
              ),
            ]),
      ),
    );
  }

  Widget buildBottomPart() {
    // ignore: sized_box_for_whitespace
    return Container(
      alignment: Alignment.bottomCenter,
      // color: Colors.red,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  hoverColor: AppColors.baseDarkPinkColor,
                  shape: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 35,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 35,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 0.5,
                      color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 35,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              buildLogoTop(),
              buttonCreate(context),
              termCodition(),
              buildBottomPart(),
            ],
          ),
        ),
      ),
    );
  }
}
