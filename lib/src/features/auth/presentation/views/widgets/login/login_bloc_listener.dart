import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/core/helpers/extensions.dart';
import 'package:docdoc/src/core/widgets/custom_dialog.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/custom_auth_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => CustomAuthLoading.show(context),
          success: (loginResponse) {
            context.pop();
            context.pushReplacementNamed(newRoute: Routes.homeRoute);
          },
          error: (error) {
            context.pop();
            CustomDialog.show(
              context: context,
              state: CustomDialogStates.error,
              message: error,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
