import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs_test/feature/susage_basket/bloc/sasusage_bloc.dart';
import 'feature/susage_basket/view/pages/suasage_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> SasusageBloc()..add(LoadSausages())) // Loading initial data
      ],
      child: MaterialApp(
        title: 'Greggs Test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const SausagePage(), // Main Suasage Page
      ),
    );
  }
}
