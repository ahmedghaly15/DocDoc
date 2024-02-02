import 'package:docdoc/src/features/auth/data/models/login/login_request_body.dart';
import 'package:docdoc/src/features/auth/data/repos/login_repo.dart';
import 'package:docdoc/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(loginRequestBody);

    response.when(
      success: (loginResponse) => emit(LoginState.success(loginResponse)),
      failure: (error) =>
          emit(LoginState.error(error: error.apiErrorModel.message ?? '')),
    );
  }
}
