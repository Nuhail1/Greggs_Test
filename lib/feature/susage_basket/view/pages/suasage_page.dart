import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/sasusage_bloc.dart';
import '../widgets/add_sausage_button.dart';
import '../widgets/sausages_basket.dart';

class SausagePage extends StatelessWidget {
  const SausagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          title: const Text("Greggs Sausage Roll"),
        ),
        body: Center(
          child: BlocBuilder<SasusageBloc, SasusageState>(
              builder: ((context, state) {
            if (state is SasusageInitial) {
              return const CircularProgressIndicator();
            } else if (state is SasusageLoaded) {
              return SausagesBasket(state.sausages);
            } else {
              return const Text('Something went wrong!');
            }
          })),
        ),
        floatingActionButton: const AddSausageButton());
  }
}
