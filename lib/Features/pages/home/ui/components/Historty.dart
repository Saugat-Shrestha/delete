import 'package:delete/Features/pages/home/bloc/home_bloc.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Historty extends StatefulWidget {
  const Historty({super.key});

  @override
  State<Historty> createState() => _HistortyState();
}

class _HistortyState extends State<Historty> {
  final HomeBloc homeBloc = HomeBloc();
  @override
  void initState() {
    homeBloc.add(HomeInitalFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listenWhen: (previous, current) => current is HomeActionState,
        buildWhen: (previous, current) => current is! HomeActionState,
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case HomeFetchingErrorState:
              return Center(
                child: CupertinoActivityIndicator(),
              );
            case HomeSuccessfulState:
              final successState = state as HomeSuccessfulState;

              return Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        children: [
                          Text(successState.posts[index].title),
                          Text(successState.posts[index].id.toString()),
                        ],
                      ),
                    );
                  },
                ),
              );
          }
          return Container();
        },
      ),
    );
  }
}
