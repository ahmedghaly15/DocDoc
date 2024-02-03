import 'package:docdoc/src/features/auth/data/models/register/register_request_body.dart';
import 'package:docdoc/src/features/auth/data/repos/register_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  void register() async {
    emit(const RegisterState.loading());

    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        phone: phoneController.text.trim(),
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );

    response.when(
      success: (registerResponse) =>
          emit(RegisterState.success(registerResponse)),
      failure: (error) =>
          emit(RegisterState.error(error: error.apiErrorModel.message ?? '')),
    );
  }
}
