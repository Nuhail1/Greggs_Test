import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs_test/feature/susage_basket/bloc/sasusage_bloc.dart';

class AddSausageButton extends StatelessWidget {
  const AddSausageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final state = context.read<SasusageBloc>().state as SasusageLoaded;
        context.read<SasusageBloc>().add(AddSausage(state.sausages.first));
      },
    );
  }
}
