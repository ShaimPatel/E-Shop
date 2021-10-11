import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/Widgets/my_textformfield.dart';
import 'package:e_shop/stylies/login_screen_stylies.dart';
import 'package:e_shop/svgImages/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              buildLogoTop(),
              buildBottomPart(),
            ],
          ),
        ),
      ),
    );
  }

  //! There Are creating Widgets ...
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
              hintText: "E-mail",
            ),
            MyTextFormField(
              obscureText: true,
              hintText: "Password",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.bottomRight,
          child: const Text(
            "Forgot Password ? ",
            style: LoginScreenStyles.forgotPasswordStyle,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/mybottombarpage');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    primary: AppColors.baseBlackColor,
                    maximumSize: const Size(double.infinity, 55),
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signupscreen');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.baseDarkPinkColor,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    maximumSize: const Size(
                      double.infinity,
                      55,
                    ),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //! There Are builsBottom Part
  Widget buildBottomPart() {
    // ignore: sized_box_for_whitespace
    return Container(
      alignment: Alignment.bottomCenter,
      // color: Colors.red,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            'or sign in with social networks',
            style: LoginScreenStyles.signinSocialStyle,
          ),
          const SizedBox(height: 5),
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
}
