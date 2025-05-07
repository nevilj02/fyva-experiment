import 'package:flutter/material.dart';
import 'package:test_3/data_manager.dart';

class SummaryView extends StatelessWidget {
  const SummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
            overflow: TextOverflow.visible,
            DataManager.productName,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        text: 'Brand: ',
                      ),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        text: 'SMUKK',
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                'View Brand',
              ),
            ],
          ),
          SizedBox(height: 27,),
          priceView(),
        ],
      ),
    );
  }

  Widget priceView() =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                '₹929',
              ),
              SizedBox(width: 8,),
              Text(
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                'MRP  ₹3,999 ',
              ),
              SizedBox(width: 8,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  'Save ₹1599',
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text(
            style: TextStyle(fontSize: 12, color: Colors.grey),
            'Inclusive of all taxes',
          ),
        ],
      );
}
