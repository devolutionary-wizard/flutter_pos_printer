import 'package:flutter/material.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  final List<MaterialColor> _listColors = <MaterialColor>[
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 5,
          children: List.generate(
              4,
              (index) =>
                  Container(width: 50, height: 20, color: _listColors[index])),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text('ទិវា​នៃក្ដីស្រឡាញ់')
      ],
    );
  }
}
