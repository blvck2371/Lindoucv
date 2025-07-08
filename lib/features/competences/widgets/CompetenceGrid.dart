import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:lindoucv/features/competences/widgets/CardOfCompetence.dart';

class CompetenceGrid extends StatelessWidget {
  final List<Map<String, dynamic>> competences;

  const CompetenceGrid({
    super.key,
    required this.competences,
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
            children: competences.map((competence) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Cardofcompetence(
                title: competence['title'],
                icone: competence['icone'],
                list: competence['list'],
              ),
            )).toList(),
          );
        }
        
        // Déterminer la largeur maximale des colonnes selon la largeur d'écran
        double maxCrossAxisExtent;
        double childAspectRatio;
        double horizontalPadding;
        
        if (screenWidth > 1200) {
          // Desktop large
          maxCrossAxisExtent = 350;
          childAspectRatio = 1.2;
          horizontalPadding = 40;
        } else if (screenWidth > 900) {
          // Desktop normal
          maxCrossAxisExtent = 300;
          childAspectRatio = 1.1;
          horizontalPadding = 30;
        } else {
          // Tablette
          maxCrossAxisExtent = 250;
          childAspectRatio = 1.0;
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
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: competences.length,
            itemBuilder: (context, index) {
              final competence = competences[index];
              return Cardofcompetence(
                title: competence['title'],
                icone: competence['icone'],
                list: competence['list'],
              );
            },
          ),
        );
      },
    );
  }
} 