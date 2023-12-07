part of 'sasusage_bloc.dart';

sealed class SasusageState extends Equatable {
  const SasusageState();

  @override
  List<Object> get props => [];
}

final class SasusageInitial extends SasusageState {}

final class SasusageLoaded extends SasusageState {
  // State to represent that the initial data has been loaded.
  final List<SausageModel> sausages;

  const SasusageLoaded({required this.sausages});

  @override
  List<Object> get props => [sausages];
}
