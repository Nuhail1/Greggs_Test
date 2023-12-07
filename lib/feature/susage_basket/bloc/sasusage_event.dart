part of 'sasusage_bloc.dart';

sealed class SasusageEvent extends Equatable {
  const SasusageEvent();

  @override
  List<Object> get props => [];
}

class LoadSausages extends SasusageEvent {}

class AddSausage extends SasusageEvent {
  // Event to add a new suasage object.
  final SausageModel sausage;
  const AddSausage(this.sausage);

  @override
  List<Object> get props => [sausage];
}
