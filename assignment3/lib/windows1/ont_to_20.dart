import 'package:flutter/material.dart';

class First20 extends StatefulWidget {
  const First20({super.key});

  @override
  State<First20> createState() => _First20State();
}

class _First20State extends State<First20> {
  bool _switchValue = false;
  int? _selectVal;
  bool checkbox1 = false;
  bool checkbox2 = false;
  dynamic newMethod() => showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          height: 200,
          alignment: Alignment.center,
          child: const Text('Modal Bottom Sheet'),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text('Grid View'),
          SizedBox(
            height: 500,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisExtent: 200,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 2,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridTile(
                    footer: GridTileBar(
                      title: Text(
                        index.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      // trailing: IconButton(
                      //   onPressed: () {},
                      //   icon: const Icon(Icons.favorite),
                      // ),
                      // leading: const Icon(Icons.shopping_bag),
                      backgroundColor: Colors.black54,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child: Text(
                        index.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Text('Switch'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Switch',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Switch(
                value: _switchValue,
                onChanged: (v) {
                  setState(
                    () {
                      _switchValue = v;
                    },
                  );
                },
              ),
            ],
          ),
          Text('Radio'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Radio 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Radio(
                value: 1,
                onChanged: (v) {
                  setState(
                    () {
                      _selectVal = v;
                    },
                  );
                },
                groupValue: _selectVal,
              ),
              const Text(
                'Radio 2',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Radio(
                value: 2,
                onChanged: (v) {
                  setState(
                    () {
                      _selectVal = v;
                    },
                  );
                },
                groupValue: _selectVal,
              ),
            ],
          ),
          Text('CheckBox'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Checkbox 1',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Checkbox(
                value: checkbox1,
                onChanged: (v) {
                  setState(
                    () {
                      checkbox1 = v!;
                    },
                  );
                },
              ),
              const Text(
                'Radio 2',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Checkbox(
                value: checkbox2,
                onChanged: (v) {
                  setState(
                    () {
                      checkbox2 = v!;
                    },
                  );
                },
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              newMethod();
            },
            child: const Text('Show Bottom Sheet'),
          ),
          const Text('Buttons'),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('OutLined Button'),
          ),
          MaterialButton(
            onPressed: () {},
            child: const Text('Material Button'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc),
          ),
        ],
      ),
    );
  }
}
