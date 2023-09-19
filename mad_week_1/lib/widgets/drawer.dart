import 'package:flutter/material.dart';
import 'package:mad_week_1/windows/home_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 300,
          color: Theme.of(context).colorScheme.inversePrimary,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                child: Text(
                  'AI',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Amad Irfan',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        widgetBuild(
          'Home',
          const Icon(Icons.home),
          const Icon(Icons.arrow_forward),
        ),
        widgetBuild(
          'dummy',
          const Icon(Icons.abc),
          const Icon(Icons.arrow_forward),
        ),
      ],
    );
  }

  widgetBuild(String title, Widget leading, Widget trailing) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: ListTile(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ));
        },
        title: Text(
          title,
        ),
        leading: leading,
        trailing: trailing,
      ),
    );
  }
}
