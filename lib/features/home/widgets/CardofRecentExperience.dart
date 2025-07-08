import 'package:flutter/material.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
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
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Date en haut sous forme de chip arrondie
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                '$datedebut - $datefin',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),

          10.vSpace,

          /// Titre
          Text(
            titre,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),

          8.vSpace,

          /// Entreprise
          Row(
            children: [
              Text('Chez: ', style: Theme.of(context).textTheme.labelLarge),
              5.hSpace,
              Expanded(
                child: Text(
                  entreprise,
                  style: Theme.of(context).textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          4.vSpace,

          /// Poste
          Row(
            children: [
              Text('Poste: ', style: Theme.of(context).textTheme.labelLarge),
              5.hSpace,
              Expanded(
                child: Text(
                  poste,
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          10.vSpace,

          /// Description
          Text('Description:', style: Theme.of(context).textTheme.labelLarge),
          4.vSpace,
          ReadMoreText(
            description,
            trimLines: isMobile ? 2 : 3,
            colorClickableText: Theme.of(context).primaryColorDark,
            trimCollapsedText: '... Lire plus',
            trimExpandedText: ' Réduire',
            moreStyle: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
