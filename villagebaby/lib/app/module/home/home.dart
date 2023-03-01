import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:villagebaby/app/global/components/counting_button.dart';
import 'package:villagebaby/app/module/home/home_cubit.dart';
import 'package:villagebaby/app/module/home/home_state.dart';
import 'package:villagebaby/domain/repository/counting_repository.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        countingRepository: context.read<CountingRepository>(),
      )..fetchCount(),
      child: Scaffold(
        body: _body(),
        floatingActionButton: _floatingButton(),
      ),
    );
  }

  Widget _floatingButton() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () => context.read<HomeCubit>().resetCount(),
          child: const Icon(
            Icons.refresh,
            size: 25,
            color: Colors.black,
          ),
        );
      },
    );
  }

  Widget _body() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is CountLoaded) {
          return Column(
            children: [
              const Spacer(flex: 2),
              Stack(
                children: [
                  Text(
                    '${state.count}',
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (state is CountUpdateInLoading) ...[
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: CupertinoActivityIndicator(),
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CountingButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () => context.read<HomeCubit>().decreaseCount(),
                  ),
                  const SizedBox(width: 100),
                  CountingButton(
                    icon: const Icon(Icons.add),
                    onPressed: () => context.read<HomeCubit>().increaseCount(),
                  ),
                ],
              ),
              const Spacer(flex: 3),
            ],
          );
        }

        return const Center(child: CupertinoActivityIndicator());
      },
    );
  }
}
