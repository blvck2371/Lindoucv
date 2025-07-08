import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:lindoucv/core/theme/app_colors.dart';
import 'package:readmore/readmore.dart';

class Cardofrecentexperience extends StatelessWidget {
  Cardofrecentexperience({
    super.key,
    required this.titre,
    required this.description,
    required this.datedebut,
    required this.datefin,
    required this.entreprise,
    required this.poste,
  });

  final String titre, description, datedebut, datefin, entreprise, poste;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isMobile = screenWidth < 600;
        final isLargeScreen = screenWidth > 1200;
        final availableWidth = constraints.maxWidth;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(isMobile ? 20 : 16),
          margin: EdgeInsets.symmetric(vertical: isMobile ? 12 : 8),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.light 
                ? AppColors.cardBackgroundLight 
                : AppColors.cardBackgroundDark,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowLight.withOpacity(0.005),
                blurRadius: 0.5,
                offset: const Offset(0, 0.2),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Date en haut sous forme de chip arrondie
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 16 : 12, 
                    vertical: isMobile ? 8 : 6
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    '$datedebut - $datefin',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: isMobile ? 14 : 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              SizedBox(height: isMobile ? 16 : 10),

              /// Titre
              Flexible(
                child: Text(
                  titre,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 18 : null,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: availableWidth < 300 ? 1 : 2,
                ),
              ),

              SizedBox(height: isMobile ? 12 : 8),

              /// Entreprise
              Row(
                children: [
                  Text(
                    'Chez: ', 
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: isMobile ? 15 : null,
                    )
                  ),
                  5.hSpace,
                  Expanded(
                    child: Text(
                      entreprise,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: isMobile ? 16 : null,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

              SizedBox(height: isMobile ? 8 : 4),

              /// Poste
              Row(
                children: [
                  Text(
                    'Poste: ', 
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: isMobile ? 15 : null,
                    )
                  ),
                  5.hSpace,
                  Expanded(
                    child: Text(
                      poste,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontSize: isMobile ? 15 : null,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),

              SizedBox(height: isMobile ? 16 : 10),

              /// Description
              Text(
                'Description:', 
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: isMobile ? 15 : null,
                )
              ),
              SizedBox(height: isMobile ? 8 : 4),
              Flexible(
                child: ReadMoreText(
                  description,
                  trimLines: isMobile ? 3 : 1,
                  colorClickableText: Theme.of(context).primaryColor,
                  trimCollapsedText: '... Lire plus',
                  trimExpandedText: ' Réduire',
                  moreStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 14 : null,
                  ),
                  lessStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 14 : null,
                  ),
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: isMobile ? 15 : null,
                    height: isMobile ? 1.5 : 1.4,
                  ),
                  trimMode: TrimMode.Line,
                  delimiterStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
