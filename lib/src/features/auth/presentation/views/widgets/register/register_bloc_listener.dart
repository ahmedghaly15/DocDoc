import 'package:docdoc/src/config/router/routes.dart';
import 'package:docdoc/src/core/utils/app_navigator.dart';
import 'package:docdoc/src/core/widgets/custom_dialog.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:docdoc/src/features/auth/presentation/views/widgets/custom_auth_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => CustomAuthLoading.show(context),
          success: (registerResponse) {
            context.pop();

            CustomDialog.show(
              context: context,
              state: CustomDialogStates.success,
              message: 'Congratulations, you have registered successfully!',
              actionText: 'Continue',
              onAction: () =>
                  context.pushNamedAndRemoveUntil(newRoute: Routes.loginRoute),
            );
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
