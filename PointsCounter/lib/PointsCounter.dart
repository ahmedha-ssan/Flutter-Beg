import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello/cubit/CoubterCubit.dart';
import 'package:hello/cubit/CounterState.dart';

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<CounterCubit, CounterState>(
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.orange,
                  title: Text('Points Counter'),
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 500,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Team A',
                                  style: TextStyle(
                                    fontSize: 35,
                                  ),
                                ),
                                Text(
                                  '${BlocProvider.of<CounterCubit>(context).FirstTeamA}',
                                  style: TextStyle(
                                    fontSize: 135,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: Size(150, 50),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            Team: 'A', buttonNumber: 1);
                                  },
                                  child: Text(
                                    'Add 1 Point',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: Size(150, 50),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            Team: 'A', buttonNumber: 2);
                                  },
                                  child: Text(
                                    'Add 2 Point',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: Size(150, 50),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            Team: 'A', buttonNumber: 3);
                                  },
                                  child: Text(
                                    'Add 3 Point',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          height: 500,
                          child: VerticalDivider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        Container(
                          height: 500,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Team B',
                                  style: TextStyle(
                                    fontSize: 35,
                                  ),
                                ),
                                Text(
                                  '${BlocProvider.of<CounterCubit>(context).FirstTeamB}',
                                  style: const TextStyle(
                                    fontSize: 135,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: Size(150, 50),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            Team: 'B', buttonNumber: 1);
                                  },
                                  child: const Text(
                                    'Add 1 Point',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: Size(150, 50),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            Team: 'B', buttonNumber: 2);
                                  },
                                  child: const Text(
                                    'Add 2 Point',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    minimumSize: Size(150, 50),
                                  ),
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context)
                                        .TeamIncrement(
                                            Team: 'B', buttonNumber: 3);
                                  },
                                  child: const Text(
                                    'Add 3 Point',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            listener: (context, state) {}),
      ),
    );
  }
}
