import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_app/api/api_calls.dart';
import 'package:rest_api_app/models/models.dart';
import 'package:rest_api_app/widgets/list_view_builder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final apiCall = Provider.of<APICalls>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('REST API APP'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addNewDoc');
        },
        tooltip: 'Add new Students',
        child: const Icon(Icons.add),
      ),
    );
  }
}
