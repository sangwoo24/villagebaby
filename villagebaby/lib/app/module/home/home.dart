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
      ),
      child: Scaffold(
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            const Spacer(flex: 2),
            Text(
              '${state.count}',
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CountingButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    if (state is! CountUpdateInLoading) {
                      context.read<HomeCubit>().decreaseCount();
                    }
                  },
                ),
                const SizedBox(width: 100),
                CountingButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (state is! CountUpdateInLoading) {
                      context.read<HomeCubit>().increaseCount();
                    }
                  },
                ),
              ],
            ),
            const Spacer(flex: 3),
          ],
        );
      },
    );
  }
}
