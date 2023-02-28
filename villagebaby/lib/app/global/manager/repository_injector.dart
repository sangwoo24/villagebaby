import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:villagebaby/domain/repository/counting_repository.dart';
import 'package:villagebaby/domain/repository_impl/counting_repository_impl.dart';

class RepositoryInjector extends StatelessWidget {
  const RepositoryInjector({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<CountingRepository>(
            create: (context) => CountingRepositoryImpl()),
      ],
      child: child,
    );
  }
}
