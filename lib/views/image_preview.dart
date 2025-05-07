import 'package:flutter/material.dart';
import 'package:test_3/data_manager.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      height: 432,
      child: ListView.builder(
        itemCount: DataManager.images.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder:
            (context, index) => Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(DataManager.images[index]),
            ),
      ),
    );
  }
}
