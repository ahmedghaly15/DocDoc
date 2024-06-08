import 'package:docdoc/src/features/home/data/models/get_all_specialization_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.getAllSpecializationLoading() =
      GetAllSpecializationLoading;
  const factory HomeState.getAllSpecializationSuccess(
      GetAllSpecializationResponse data) = GetAllSpecializationSuccess<T>;
  const factory HomeState.getAllSpecializationError(String error) =
      GetAllSpecializationError<T>;
}
