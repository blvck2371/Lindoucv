import 'package:flutter/material.dart';
import 'package:lindoucv/features/competences/widgets/CardOfCompetence.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';

class Competences extends StatefulWidget {
  const Competences({super.key});

  @override
  State<Competences> createState() => _CompetencesState();
}

class _CompetencesState extends State<Competences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Mes compétences clés',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Timeline container with proper structure
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Cardofcompetence(
  title: 'Langages & Frameworks',
  icone: Icons.code_outlined,
  list: [
    'Dart (langage principal de Flutter)',
    'Flutter (framework mobile multiplateforme)',
    'PHP, JavaScript, HTML/CSS',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'Développement Mobile & UI',
  icone: Icons.smartphone_outlined,
  list: [
    'Création d’interfaces utilisateurs réactives (Widgets)',
    'Responsive design & Material Design',
    'Architecture MVC, MVVM, Clean Architecture',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'API & Backend',
  icone: Icons.cloud_sync_outlined,
  list: [
    'Intégration d’API RESTful (http, dio)',
    'Firebase Auth, JWT (authentification sécurisée)',
    'Communication client-serveur efficace',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'Bases de Données',
  icone: Icons.storage_outlined,
  list: [
    'MySQL, Firebase Firestore, MongoDB',
    'Stockage local avec Hive & SharedPreferences',
    'Structuration et requêtage de données',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'Outils & Environnements',
  icone: Icons.build_outlined,
  list: [
    'Android Studio, VS Code',
    'Git / GitHub (contrôle de version)',
    'Postman, Docker (bases), Trello, StartUML',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'Tests & Qualité',
  icone: Icons.bug_report_outlined,
  list: [
    'Tests unitaires et widgets',
    'Flutter DevTools pour le débogage',
    'Analyse statique avec Dart lints',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'Déploiement & Maintenance',
  icone: Icons.cloud_upload_outlined,
  list: [
    'Génération de builds APK / AAB',
    'Publication sur Google Play Store',
    'Gestion des signatures et des versions',
  ],
),
15.vSpace,
Cardofcompetence(
  title: 'Compétences Transversales',
  icone: Icons.groups_outlined,
  list: [
    'Méthodologie Agile / Scrum',
    'Travail en équipe, autonomie',
    'Curiosité technique et apprentissage continu',
  ],
),

                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
