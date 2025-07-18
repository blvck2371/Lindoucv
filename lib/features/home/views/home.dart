import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:lindoucv/features/competences/widgets/CardOfCompetence.dart';
import 'package:lindoucv/features/competences/widgets/CompetenceGrid.dart';
import 'package:lindoucv/features/home/widgets/CardofRecentExperience.dart';
import 'package:lindoucv/features/home/widgets/ExperienceGrid.dart';
import 'package:lindoucv/shared/widgets/annimation.dart';
import 'package:lindoucv/shared/widgets/titleAndViewAll.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';

import 'package:lindoucv/core/theme/theme_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final horizontalPadding = isMobile ? 20.0 : (screenWidth > 1200 ? 60.0 : 40.0);
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: horizontalPadding, right: horizontalPadding, bottom: 20),
          child: Column(
            children: [
              25.vSpace,
              LayoutBuilder(
                builder: (context, constraints) {
                  bool isWide = constraints.maxWidth > 600;
                  if (isWide) {
                    // Mode paysage/tablette : image grande et centrée
                    return DelayedAnimation(
                      delay: 300,
                      startOffsetX: -0.0,
                      startOffsetY: 0.2,

                      child: Container(
                        constraints: const BoxConstraints(
                          minWidth: 0,
                          maxWidth: double.infinity,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 93, 70, 155),
                              Color.fromARGB(255, 170, 156, 201),
                              Color.fromARGB(255, 170, 156, 201),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Mon Profil',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 6,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text(
                                      'Professionnel en informatique | Chef de projet | Etudiant',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Expert en stratégie digitale passionné par l\'innovation technologique.',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  16.vSpace,
                                  Row(
                                    children: [
                                      Flexible(
                                        child: ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: const Icon(
                                              Icons.email_outlined,
                                            ),
                                          ),
                                          label: Container(
                                            padding: EdgeInsets.only(right: 15),
                                            child: const Text('Contactez-Moi'),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            foregroundColor: Color(0xFF4C2E84),
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                            ),
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      12.hSpace,
                                      Flexible(
                                        child: OutlinedButton.icon(
                                          onPressed: () {},
                                          icon: Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: const Icon(Icons.download),
                                          ),
                                          label: Container(
                                            padding: EdgeInsets.only(right: 15),
                                            child: const Text('Telecharger CV'),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                              color: Colors.white,
                                            ),
                                            foregroundColor: Colors.white,
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                            ),
                                            textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 32),
                            // Image plus grande et centrée
                            DelayedAnimation(
                              startOffsetX: 0.0,
                              startOffsetY: -0.0,
                              delay: 800,
                              child: const Center(
                                child: CircleAvatar(
                                  radius: 80,
                                  backgroundImage: AssetImage(
                                    'assets/profil/photopp.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    // Mode mobile : espacement réduit
                    return DelayedAnimation(
                      delay: 300,
                      startOffsetX: 0.0,
                      startOffsetY: -0.4,
                      child: Container(
                        constraints: const BoxConstraints(
                          minWidth: 0,
                          maxWidth: double.infinity,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 93, 70, 155),
                              Color.fromARGB(255, 170, 156, 201),
                              Color.fromARGB(255, 170, 156, 201),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Mon Profil',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Professionnel en informatique | Chef de projet | Etudiant',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Spécialiste du développement web & mobile et de la stratégie digitale',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            10.vSpace,
                            Row(
                              children: [
                                Flexible(
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: const Icon(Icons.email_outlined),
                                    ),
                                    label: Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: const Text('Contactez-Moi'),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Color(0xFF4C2E84),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                8.hSpace,
                                Flexible(
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: const Icon(Icons.download),
                                    ),
                                    label: Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: const Text('Telecharger CV'),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                        color: Colors.white,
                                      ),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),

              // technical expertise section
              20.vSpace,
              Titleandviewall(
                title: 'Expertise Technique',
                subtitle: 'Compétences & technologies de spécialisation',
              ),

              // end technical expertise section
              // List of competencies
              DelayedAnimation(
                delay: 300,
                startOffsetX: -0.0,
                startOffsetY: 0.2,

                child: CompetenceGrid(
                  competences: [
                    {
                      'title': 'Langages de programmation',
                      'icone': Icons.code,
                      'list': [
                        'JavaScript',
                        'Python',
                        'Java',
                        'C++',
                        'Dart',
                        'PHP',
                        'C#',
                      ],
                    },
                    {
                      'title': 'Frameworks et bibliothèques',
                      'icone': Icons.web,
                      'list': ['React', 'Angular', 'Vue.js', 'Flutter'],
                    },
                    {
                      'title': 'Bases de données',
                      'icone': Icons.storage,
                      'list': ['MySQL', 'PostgreSQL', 'MongoDB', 'SQLite'],
                    },
                    {
                      'title': 'Outils de design et de prototypage',
                      'icone': Icons.design_services,
                      'list': ['Figma', 'Adobe XD', 'Sketch', 'InVision'],
                    },
                    {
                      'title': 'Outils de gestion de projet',
                      'icone': Icons.task,
                      'list': ['Jira', 'Trello', 'Asana', 'Git'],
                    },
                  ],
                ),
              ),

              //fin de la liste des compétences
              20.vSpace,
              Titleandviewall(
                title: 'Expériences récentes',
                subtitle:
                    'Mes expériences professionnelles les plus significatives',
              ),

              15.vSpace,

              DelayedAnimation(
                delay: 400,
                startOffsetX: -0.0,
                startOffsetY: 0.2,
                child: ExperienceGrid(
                  experiences: [
                    {
                      'titre': 'Développement web & mobile avec Firebase',
                      'description': 'Développement web et mobile chez Envol. Durant cette période, j\'ai travaillé sur des projets de développement web et mobile en utilisant Firebase comme backend. J\'ai conçu et développé des applications web et mobiles performantes, sécurisées et évolutives. J\'ai également intégré des fonctionnalités telles que l\'authentification des utilisateurs, la gestion des données en temps réel et le stockage de fichiers. Mon rôle a impliqué la collaboration avec des équipes multidisciplinaires pour assurer la qualité et la performance des applications.',
                      'datedebut': 'Janvier 2025',
                      'datefin': 'Présent',
                      'entreprise': 'Envol',
                      'poste': 'Développeur web et mobile',
                    },
                    {
                      'titre': 'Développement d\'applications Flutter',
                      'description': 'Développement d\'applications mobiles multiplateformes avec Flutter. J\'ai créé des interfaces utilisateur réactives et performantes, intégré des API RESTful, et implémenté des fonctionnalités avancées comme la gestion d\'état, la navigation et l\'optimisation des performances. Collaboration étroite avec les équipes de design pour assurer une expérience utilisateur optimale.',
                      'datedebut': 'Septembre 2024',
                      'datefin': 'Décembre 2024',
                      'entreprise': 'Projet personnel',
                      'poste': 'Développeur Flutter',
                    },
                  ],
                ),
              ),

              25.vSpace,
              // call action button
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Vous avez un projet ?',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    10.vSpace,
                    Text(
                      'Contactez-moi pour discuter de vos besoins et voir comment je peux vous aider à atteindre vos objectifs.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),

                    10.vSpace,

                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: const Icon(Icons.email_outlined),
                      ),
                      label: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: const Text('Contactez-Moi'),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColorDark,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
