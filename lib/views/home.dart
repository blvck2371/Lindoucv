import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:lindoucv/componentview/CardOfCompetence.dart';
import 'package:lindoucv/componentview/CardofRecentExperience.dart';
import 'package:lindoucv/componentview/annimation.dart';
import 'package:lindoucv/componentview/titleAndViewAll.dart';
import 'package:lindoucv/theme/app_spacing.dart';

import 'package:lindoucv/theme/theme_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                                    'Sample Candidate',
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
                                      'IT Professional | Project Manager | Engineer',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Results-oriented professional with extensible and collaborative mindset.',
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
                              'Sample Candidate',
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
                                'IT Professional | Project Manager | Engineer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Results-oriented professional with extensible and collaborative mindset.',
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
              25.vSpace,
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

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.vSpace,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: [
                          Cardofcompetence(
                            title: 'Langages de programmation',
                            icone: Icons.code,
                            list: [
                              'JavaScript',
                              'Python',
                              'Java',
                              'C++',
                              'Dart',
                              'PHP',
                              'C#',
                            ],
                          ),
                        ],
                      ),
                    ),
                    15.vSpace,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: [
                          Cardofcompetence(
                            title: 'Frameworks et bibliothèques',
                            icone: Icons.web,
                            list: ['React', 'Angular', 'Vue.js', 'Flutter'],
                          ),
                        ],
                      ),
                    ),
                    15.vSpace,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: [
                          Cardofcompetence(
                            title: 'Bases de données',
                            icone: Icons.storage,
                            list: ['MySQL', 'PostgreSQL', 'MongoDB', 'SQLite'],
                          ),
                        ],
                      ),
                    ),
                    15.vSpace,
                    //Outils de design et de prototypage
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: [
                          Cardofcompetence(
                            title: 'Outils de design et de prototypage',
                            icone: Icons.design_services,
                            list: ['Figma', 'Adobe XD', 'Sketch', 'InVision'],
                          ),
                        ],
                      ),
                    ),
                    15.vSpace,
                    //Outils de gestion de projet
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: [
                          Cardofcompetence(
                            title: 'Outils de gestion de projet',
                            icone: Icons.task,
                            list: ['Jira', 'Trello', 'Asana', 'Git'],
                          ),
                        ],
                      ),
                    ),
                    15.vSpace,
                  ],
                ),
              ),

              //fin de la liste des compétences
              Titleandviewall(
                title: 'Expériences récentes',
                subtitle:
                    'Faits saillants de mes expériences professionnelles récentes',
              ),

              15.vSpace,

              Cardofrecentexperience(
                titre: 'Developpeement web & mobile avec Firebase',
                description:
                    ' dev web et mobile propre chez envol et durant cette période, jai travaillé sur des projets de développement web et mobile en utilisant Firebase comme backend. Jai conçu et développé des applications web et mobiles performantes, sécurisées et évolutives.  Jai également intégré des fonctionnalités telles que lauthentification des utilisateurs, la gestion des données en temps réel et le stockage de fichiers. Mon rôle a impliqué la collaboration avec des équipes multidisciplinaires pour assurer la qualité et la performance des applications. ',

                datedebut: 'jan-2025',
                datefin: 'présent',
                entreprise: 'Envol',
                poste: 'Developpeur web et mobile ',
              ),

              Cardofrecentexperience(
                titre: 'Developpeement web & mobile avec Firebase',
                description:
                    ' dev web et mobile propre chez envol et durant cette période, jai travaillé sur des projets de développement web et mobile en utilisant Firebase comme backend. Jai conçu et développé des applications web et mobiles performantes, sécurisées et évolutives.  Jai également intégré des fonctionnalités telles que lauthentification des utilisateurs, la gestion des données en temps réel et le stockage de fichiers. Mon rôle a impliqué la collaboration avec des équipes multidisciplinaires pour assurer la qualité et la performance des applications. ',

                datedebut: 'jan-2025',
                datefin: 'présent',
                entreprise: 'IEF2i',
                poste: 'Developpeur web et mobile ',
              ),

              Cardofrecentexperience(
                titre: 'Developpeement web & mobile avec Firebase',
                description:
                    ' dev web et mobile propre chez envol et durant cette période, jai travaillé sur des projets de développement web et mobile en utilisant Firebase comme backend. Jai conçu et développé des applications web et mobiles performantes, sécurisées et évolutives.  Jai également intégré des fonctionnalités telles que lauthentification des utilisateurs, la gestion des données en temps réel et le stockage de fichiers. Mon rôle a impliqué la collaboration avec des équipes multidisciplinaires pour assurer la qualité et la performance des applications. ',

                datedebut: 'fev-2024 à jan-2025',
                datefin: 'présent',
                entreprise: 'IEF2i',
                poste: 'Developpeur web et mobile ',
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
