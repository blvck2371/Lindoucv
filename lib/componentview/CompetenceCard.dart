import 'package:flutter/material.dart';

class CompetenceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> competences;

  const CompetenceCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.competences,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2933), // Couleur de fond sombre
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Cercle avec icône
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              color: Color(0xFF232129),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.black87,
                size: 32,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Titre
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ) ?? const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Divider(color: Colors.white.withOpacity(0.15)),
          const SizedBox(height: 8),
          // Liste des compétences
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: competences.map((c) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(color: Color(0xFFB39DDB), fontSize: 16),
                  ),
                  Expanded(
                    child: Text(
                      c,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
} 