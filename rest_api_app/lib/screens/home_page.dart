import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../api/api_calls.dart';
import '../models/models.dart';
import '../widgets/list_view_builder.dart';
import '../utils/utils.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  StreamSubscription? subscription;

  @override
  void initState() {
    onConnectivityChange();
    super.initState();
  }

  onConnectivityChange() {
    subscription = Connectivity().onConnectivityChanged.listen(
      (event) {
        Provider.of<Utils>(context, listen: false)
            .showSnackBar(context, event.toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final apiCall = Provider.of<APICalls>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('REST API APP'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addNewDoc');
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: FutureBuilder<Students>(
          future: apiCall.getStudents(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return ListViewBuilder(
                  snapshot: snapshot,
                );
              } else {
                return const Center(
                  child: Text('oops sorry No data For you '),
                );
              }
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          },
        ),
      ),
    );
  }
}
