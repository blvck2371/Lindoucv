import 'package:flutter/material.dart';
import 'package:lindoucv/componentview/ExperiencesComponent.dart';
import 'package:lindoucv/theme/app_spacing.dart';

class Experiences extends StatefulWidget {
  const Experiences({super.key});

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
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
                'Expériences Professionnelles',
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
                  Experiencescomponent(
                    title: 'Développeur web et mobile',
                    subtitle: 'ENVOL',
                    country: 'Cameroun',
                    datedebut: 'Février 2022',
                    datefin: 'Décembre 2025',
                    responsabilites: [
                      'Analyse des besoins des clients et rédaction de cahiers des charges.',
                      'Développement d\'applications web et mobiles en utilisant Flutter, Laravel et Vue.js.',
                      'Mise en place des bases de données relationnelles et NoSQL (MySQL, Firebase, MongoDB).',
                      'Intégration d\'API RESTful et gestion des échanges client-serveur.',
                      'Collaboration avec les équipes UI/UX pour optimiser l\'expérience utilisateur.',
                      'Tests, débogage et déploiement des applications.',
                      'Formation et accompagnement technique des utilisateurs finaux.',
                      'Participation à des réunions de planification agile (Scrum).',
                    ],
                  ),
                  
                  20.vSpace,
                  
                  Experiencescomponent(
                    title: 'Stagiaire Développeur web',
                    subtitle: 'ENVOL',
                    country: 'Cameroun',
                    datedebut: 'Août 2021',
                    datefin: 'Janvier 2022',
                    responsabilites: [
                      'Conception d\'interfaces web interactives avec HTML, CSS, JavaScript.',
                      'Développement de fonctionnalités backend en PHP (CodeIgniter).',
                      'Assistance à la maintenance corrective et évolutive des projets existants.',
                      'Utilisation de Git pour le versionnement et la collaboration.',
                      'Participation à l\'intégration et au test des applications sur différents navigateurs.',
                      'Rédaction de documentation technique.',
                    ],
                  ),
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
