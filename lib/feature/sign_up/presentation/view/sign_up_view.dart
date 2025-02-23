import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_health/core/constants/app_colors.dart';
import 'package:i_health/core/constants/app_strings.dart';

import 'package:i_health/core/functions/navigation.dart';
import 'package:i_health/feature/sign_in/presentation/view/sign_in_view.dart';
import 'package:i_health/feature/sign_up/presentation/cubit/signup_cubit.dart';

import '../../../../core/common/widget/custom_text_span.dart';
import '../sections/sign_up_head_section.dart';
import '../sections/text_form_field_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        backgroundColor: AppColors.registerBackGround,
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
              ),
            ),
            SliverToBoxAdapter(
              child: signUpHeadSection(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 67,
              ),
            ),
            const SliverToBoxAdapter(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SignUpBody(),
            )),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            SliverToBoxAdapter(
              child: customTextSpan(
                firstText: AppStrings.alreadyHav,
                lastText: AppStrings.signIn,
                onTap: () {
                  Navigation.pushRepl(
                      context: context, pushScreen: const SignInView());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
