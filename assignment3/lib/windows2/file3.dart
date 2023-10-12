import 'package:flutter/material.dart';

class File3 extends StatefulWidget {
  const File3({super.key});

  @override
  State<File3> createState() => _File3State();
}

class _File3State extends State<File3> {
  List ls = List.generate(10, (index) => index);
  String? selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('text field'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Form and  text Form field'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('List View Builder'),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: ls.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: ValueKey(ls[index]),
                  onDismissed: (v) {
                    ls.remove(ls[index]);
                    setState(() {});
                  },
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                  ),
                  child: Card(
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text('$index'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Text('Grid View Builder'),
          SizedBox(
            height: 400,
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
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                      leading: const Icon(Icons.shopping_bag),
                      backgroundColor: Colors.black54,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
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
          DropdownButton<String>(
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          // Table( )
          const Text('Flexible'),
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
            ],
          ),
          const Text('Table'),
          Table(
            children: const [
              TableRow(
                children: [
                  Text('Cell 1'),
                  Text('Cell 2'),
                  Text('Cell 3'),
                ],
              ),
              TableRow(
                children: [
                  Text('Cell 4'),
                  Text('Cell 5'),
                  Text('Cell 6'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
