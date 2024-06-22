import 'package:flutter/material.dart';

class IngredientTabview extends StatefulWidget {
  const IngredientTabview({Key? key}) : super(key: key);

  @override
  State<IngredientTabview> createState() => _IngredientTabviewState();
}

class _IngredientTabviewState extends State<IngredientTabview> {
  List<Map<String, String>> myRowDataList = [
    {
      'Ingredient': 'Beef',
      'Quantity': '2gr',
      'Image': 'assets/images/meats.png'
    },
    {
      'Ingredient': 'Sugar',
      'Quantity': '1 cup',
      'Image': 'assets/images/sugar.png'
    },
    {
      'Ingredient': 'Eggs',
      'Quantity': '3 unit',
      'Image': 'assets/images/eggs.png'
    },
    {
      'Ingredient': 'Milk',
      'Quantity': '1 cup',
      'Image': 'assets/images/milk.png'
    },
    {
      'Ingredient': 'Butter',
      'Quantity': '100g',
      'Image': 'assets/images/butter.png'
    },
    // Add more rows as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(152, 246, 172, 155),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Table(
              border: const TableBorder(
                horizontalInside: BorderSide(
                  color: Color.fromARGB(255, 85, 85, 85),
                  width: 0.5,
                ),
                verticalInside: BorderSide.none,
                bottom: BorderSide(
                  color: Color.fromARGB(255, 85, 85, 85),
                  width: 0.5,
                ),
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                // Table rows generated dynamically from myRowDataList
                for (var rowData in myRowDataList)
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Image.asset(
                                rowData['Image']!,
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                rowData['Ingredient']!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            rowData['Quantity']!,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
