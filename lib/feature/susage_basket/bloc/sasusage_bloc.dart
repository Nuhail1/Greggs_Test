import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../data/models/sausage_model.dart';
import '../data/repos/parse_asset_sausage.dart';
part 'sasusage_event.dart';
part 'sasusage_state.dart';

class SasusageBloc extends Bloc<SasusageEvent, SasusageState> {
  SasusageBloc() : super(SasusageInitial()) {
    on<LoadSausages>((event, emit) async {
      // Adding 2 secs delay to treat it as if that JSON is coming back from an API.
      await Future.delayed(const Duration(seconds: 2), () async {
        SausageModel sausage = await AssetSausage.parse();
        // Adding one sausage to list on initial load
        // so the same object can be added again and again
        // so the app wont need to wait for same object to load.
        emit(SasusageLoaded(sausages: [sausage]));
      });
    });
    on<AddSausage>((event, emit) {
      final state = this.state as SasusageLoaded;
      // Getting previously added suasages and adding one more into it.
      List<SausageModel> sausages = List.from(state.sausages)
        ..add(event.sausage);
      emit(SasusageLoaded(sausages: sausages));
    });
  }
}
