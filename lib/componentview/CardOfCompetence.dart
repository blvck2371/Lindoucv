import 'package:flutter/material.dart';
import 'package:lindoucv/theme/app_spacing.dart';

class Cardofcompetence extends StatefulWidget {
  const Cardofcompetence({
    super.key,
    required this.title,
    required this.icone,
    required this.list,
  });
  final String title;
  final IconData icone;
  final List list;

  @override
  State<Cardofcompetence> createState() => _CardofcompetenceState();
}

class _CardofcompetenceState extends State<Cardofcompetence> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(
                  widget.icone,
                  size: 30,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              SizedBox(width: 10),
              Text(widget.title, style: Theme.of(context).textTheme.labelLarge),
            ],
          ),
          SizedBox(height: 10),
          ...widget.list
              .map(
                (item) => Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 15,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    5.hSpace,
                    Text(item),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
