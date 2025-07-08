import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:lindoucv/features/home/widgets/CardofRecentExperience.dart';

class ExperienceGrid extends StatelessWidget {
  final List<Map<String, dynamic>> experiences;

  const ExperienceGrid({
    super.key,
    required this.experiences,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isMobile = screenWidth < 600;
        
        // Sur mobile, utiliser une colonne simple sans contraintes de hauteur
        if (isMobile) {
          return Column(
            children: experiences.map((experience) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Cardofrecentexperience(
                titre: experience['titre'],
                description: experience['description'],
                datedebut: experience['datedebut'],
                datefin: experience['datefin'],
                entreprise: experience['entreprise'],
                poste: experience['poste'],
              ),
            )).toList(),
          );
        }
        
        // Déterminer la largeur maximale des colonnes selon la largeur d'écran
        double maxCrossAxisExtent;
        double childAspectRatio;
        double horizontalPadding;
        
        if (screenWidth > 1200) {
          // Desktop large - 2 colonnes
          maxCrossAxisExtent = 600;
          childAspectRatio = 1.8;
          horizontalPadding = 40;
        } else if (screenWidth > 900) {
          // Desktop normal - 2 colonnes
          maxCrossAxisExtent = 500;
          childAspectRatio = 1.6;
          horizontalPadding = 30;
        } else {
          // Tablette - 1 colonne
          maxCrossAxisExtent = 400;
          childAspectRatio = 1.4;
          horizontalPadding = 20;
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: maxCrossAxisExtent,
              childAspectRatio: childAspectRatio,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: experiences.length,
            itemBuilder: (context, index) {
              final experience = experiences[index];
              return Cardofrecentexperience(
                titre: experience['titre'],
                description: experience['description'],
                datedebut: experience['datedebut'],
                datefin: experience['datefin'],
                entreprise: experience['entreprise'],
                poste: experience['poste'],
              );
            },
          ),
        );
      },
    );
  }
} 