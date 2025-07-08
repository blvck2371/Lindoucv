import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    
    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 12),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26, 
            blurRadius: 4, 
            offset: Offset(0, 2)
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // En-tête avec icône et titre
          Row(
            children: [
              CircleAvatar(
                radius: isMobile ? 20 : 18,
                backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
                child: Icon(
                  widget.icone,
                  size: isMobile ? 24 : 20,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
              SizedBox(width: isMobile ? 12 : 8),
              Expanded(
                child: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 16 : null,
                  ),
                  maxLines: isMobile ? null : 2,
                  overflow: isMobile ? null : TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          
          SizedBox(height: isMobile ? 16 : 12),
          
          // Liste des compétences
          ...widget.list.map((item) => Padding(
            padding: EdgeInsets.only(bottom: isMobile ? 8 : 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.check_circle_outline,
                  size: isMobile ? 18 : 16,
                  color: Theme.of(context).primaryColorDark,
                ),
                SizedBox(width: isMobile ? 8 : 6),
                Expanded(
                  child: Text(
                    item,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: isMobile ? 14 : 13,
                      height: isMobile ? 1.4 : 1.2,
                    ),
                    maxLines: isMobile ? null : 2,
                    overflow: isMobile ? null : TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )).toList(),
        ],
      ),
    );
  }
}
