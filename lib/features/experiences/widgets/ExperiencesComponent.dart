import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:lindoucv/shared/widgets/annimation.dart';
class Experiencescomponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String country;
  final String datedebut;
  final String datefin;
  final List<String> responsabilites;

  const Experiencescomponent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.country,
    required this.datedebut,
    required this.datefin,
    required this.responsabilites,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Timeline indicator
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: Icon(
                  Icons.work,
                  size: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              // trait du timeline qui s'adapte à la hauteur
              Expanded(
                child: Container(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),

          10.hSpace,

          /// Text section  
          /// corps de l'experience 
          Expanded(
            child:    DelayedAnimation(
              delay: 300,
              startOffsetX: 0.1,
              startOffsetY: 0.0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    3.vSpace,
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    2.vSpace,
                    Text(
                      country,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                    2.vSpace,
                    Text(
                      '$datedebut - $datefin',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    8.vSpace,
              
                    /// Responsabilités
                    ...responsabilites.map(
                      (responsibility) => Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              size: 15,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            8.hSpace,
                            Expanded(
                              child: Text(
                                responsibility,
                                style: Theme.of(context).textTheme.bodyMedium,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
