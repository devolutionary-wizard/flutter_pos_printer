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

  // final List<String> _listText = <String>[
  //   'មិនទាន់​ផលិតចេញផង',
  //   'ដាក់ឈ្មោះភីកអាប់អគ្គិសនី​ទីមួយរបស់ខ្លួនហើយស្រេច',
  //   'ទិវា​នៃក្ដីស្រឡាញ់',
  //   'ប្រព័ន្ធប្រតិបត្តិការ Android 14 មកជាមួយឡូហ្គូថ្មី និង​កាន់តែ​មានសុវត្ថិភាព​ជាងមុន'
  // ];

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
        // Wrap(children: List.generate(_listText.length, (index) => Text(_listText[index])),),
        const Text(
          'ប្រព័ន្ធប្រតិបត្តិការ Android 14',
          style: TextStyle(fontSize: 10),
        ),
        const Text(
          'ដាក់ឈ្មោះភីកអាប់អគ្គិសនី​ទីមួយរបស់ខ្លួនហើយស្រេច',
          style: TextStyle(fontSize: 10),
        ),
        const Text(
          'ទិវា​នៃក្ដីស្រឡាញ់',
          style: TextStyle(fontSize: 10),
        ),
        const Text(
          ' មកដឹង​ពីរបៀប​ស្នើសុំ​ឈ្មោះ Domain ជាតិ',
          style: TextStyle(fontSize: 10),
        ),
        const Text(
          'ស៊េរី iPhone 15 ឆ្នាំ២០២៣',
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
