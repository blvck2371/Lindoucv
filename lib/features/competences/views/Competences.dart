import 'package:flutter/material.dart';
import 'package:lindoucv/features/competences/widgets/CardOfCompetence.dart';
import 'package:lindoucv/features/competences/widgets/CompetenceGrid.dart';
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

            // Grille responsive des compétences
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CompetenceGrid(
                competences: [
                  {
                    'title': 'Langages & Frameworks',
                    'icone': Icons.code_outlined,
                    'list': [
                      'Dart (langage principal de Flutter)',
                      'Flutter (framework mobile multiplateforme)',
                      'PHP, JavaScript, HTML/CSS',
                    ],
                  },
                  {
                    'title': 'Développement Mobile & UI',
                    'icone': Icons.smartphone_outlined,
                    'list': [
                      'Création d\'interfaces utilisateurs réactives (Widgets)',
                      'Responsive design & Material Design',
                      'Architecture MVC, MVVM, Clean Architecture',
                    ],
                  },
                  {
                    'title': 'API & Backend',
                    'icone': Icons.cloud_sync_outlined,
                    'list': [
                      'Intégration d\'API RESTful (http, dio)',
                      'Firebase Auth, JWT (authentification sécurisée)',
                      'Communication client-serveur efficace',
                    ],
                  },
                  {
                    'title': 'Bases de Données',
                    'icone': Icons.storage_outlined,
                    'list': [
                      'MySQL, PostgreSQL, SQLite',
                      'MongoDB (NoSQL)',
                      'Firebase Firestore',
                    ],
                  },
                  {
                    'title': 'Outils & Méthodologies',
                    'icone': Icons.build_outlined,
                    'list': [
                      'Git, GitHub, GitLab',
                      'Agile/Scrum, Jira, Trello',
                      'Docker, CI/CD',
                    ],
                  },
                  {
                    'title': 'Design & UX',
                    'icone': Icons.design_services_outlined,
                    'list': [
                      'Figma, Adobe XD',
                      'Material Design Guidelines',
                      'Responsive Design',
                    ],
                  },
                ],
              ),
            ),
            
            20.vSpace,
          ],
        ),
      ),
    );
  }
}
