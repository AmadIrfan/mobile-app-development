import 'package:assignment3/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';

class CustomWidgets1 extends StatefulWidget {
  const CustomWidgets1({super.key});

  @override
  State<CustomWidgets1> createState() => _CustomWidgets1State();
}

class _CustomWidgets1State extends State<CustomWidgets1> {
  final double _top = 10;
  double _h = 0;
  double _w = 0;
  double opacity = 0;
  double _btnTop = 60;
  double _posTop = 10;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomExpansionTile(
            leading: const CircleAvatar(
              child: Text('1'),
            ),
            text: const Text('Stack and Position'),
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.3,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: _top,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Stack',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: _posTop,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Positioned',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: _btnTop,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_posTop == 40) {
                              _posTop = 10;
                              _btnTop = 60;
                            } else {
                              _posTop = 40;
                              _btnTop = 100;
                            }
                          });
                        },
                        child: const Text('change Position'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomExpansionTile(
            leading: const CircleAvatar(
              child: Text('2'),
            ),
            text: const Text('Animated container or Animated Opacity'),
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (opacity == 1) {
                      _h = 0;
                      _w = 0;
                      opacity = 0;
                      return;
                    }
                    _h = 150;
                    _w = 150;
                    opacity = 1;
                  });
                },
                child: const Text('Show Animation'),
              ),
              const SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                margin: const EdgeInsets.all(10),
                duration: const Duration(seconds: 3),
                height: _h,
                width: _w,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                ),
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 3),
                  opacity: opacity,
                  child: const Text(
                    'built in Animation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
