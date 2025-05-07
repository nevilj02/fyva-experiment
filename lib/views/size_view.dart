import 'package:flutter/material.dart';
import 'package:test_3/data_manager.dart';

class SizeView extends StatefulWidget {
  const SizeView({super.key});

  @override
  _SizeViewState createState() => _SizeViewState();
}

class _SizeViewState extends State<SizeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  'Select Size',
                ),
              ),
              Text(
                style: TextStyle(color: Colors.blue, fontSize: 12),
                'Size Guide',
              ),
            ],
          ),
          SizedBox(height: 22,),
          SizedBox(
            height: 55,
            child: ListView.builder(
              itemCount: DataManager.sizes.keys.length,
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (DataManager.sizes[DataManager.sizes.keys.elementAt(
                              index,
                            )] ??
                            false) {
                          selectedIndex = index;
                          setState(() {});
                        }
                      },
                      child: SizeWidget(
                        isSelected: index == selectedIndex,
                        size: DataManager.sizes.keys.elementAt(index),
                        isAvailable:
                            DataManager.sizes[DataManager.sizes.keys.elementAt(
                              index,
                            )] ??
                            false,
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class SizeWidget extends StatelessWidget {
  final bool isSelected;
  final String size;
  final bool isAvailable;

  const SizeWidget({
    super.key,
    required this.isSelected,
    required this.size,
    required this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.grey.shade100 : Colors.white,
            border: Border.all(
              color: isSelected ? Colors.black : Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(80))
          ),
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 5),

          child: Text(
            style: TextStyle(fontSize: 14, color: Colors.black),
            size,
          ),
        ),
        if (!isAvailable)
          Text(style: TextStyle(color: Colors.grey, fontSize: 10), 'sold out'),
      ],
    );
  }
}
