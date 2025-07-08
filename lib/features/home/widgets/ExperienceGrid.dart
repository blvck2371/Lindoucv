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
        final availableWidth = constraints.maxWidth;
        
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
        
        // Déterminer la largeur des cartes selon la largeur d'écran
        double cardWidth;
        
        if (screenWidth > 1200) {
          // Desktop large - 2 colonnes
          cardWidth = (availableWidth - 20) / 2; // 20 = spacing
        } else if (screenWidth > 900) {
          // Desktop normal - 2 colonnes
          cardWidth = (availableWidth - 20) / 2; // 20 = spacing
        } else {
          // Tablette - 2 colonnes aussi
          cardWidth = (availableWidth - 20) / 2; // 20 = spacing
        }

        return Wrap(
          spacing: 20, // Espacement horizontal entre les cartes
          runSpacing: 20, // Espacement vertical entre les lignes
          children: experiences.map((experience) => SizedBox(
            width: cardWidth,
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
      },
    );
  }
} 