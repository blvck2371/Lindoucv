import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';

class Titleandviewall extends StatelessWidget {
  Titleandviewall({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                this.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              TextButton(
                onPressed: () {
                  // Action for "Voir tout"
                },
                child: Row(
                  children: [
                    Text(
                      'Voir tout',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
          15.vSpace,
          Row(
            children: [
              Expanded(
                child: Text(
                  this.subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    letterSpacing: sqrt1_2,
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
