import 'package:flutter/material.dart';
import 'package:lindoucv/features/contact/widgets/ContactTile.dart';
import 'package:lindoucv/shared/widgets/annimation.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        debugPrint('Impossible d’ouvrir l’URL : $url');
      }
    } catch (e) {
      debugPrint('Erreur lors de l’ouverture de l’URL : $url\n$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F10),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Contactez-moi',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                12.vSpace,
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'N\'hésitez pas à me contacter pour une collaboration, des questions ou simplement pour dire bonjour ! ',
                          style: TextStyle(color: Colors.white70),
                        ),
                        const SizedBox(height: 20),

                        DelayedAnimation(
                          delay: 300,
                          startOffsetX: -0.0,
                          startOffsetY: 0.2,
                          child: ContactTile(
                            icon: Icons.email,
                            title: 'Email',
                            subtitle: 'lindoungapoutabdel@gmail.com',
                            onTap: () {
                              _launchUrl('mailto:lindoungapoutabdel@gmail.com');
                            },
                          ),
                        ),
                        DelayedAnimation(
                          delay: 400,
                          startOffsetX: -0.0,
                          startOffsetY: 0.2,
                          child: ContactTile(
                            icon: Icons.phone,
                            title: 'Téléphone',
                            subtitle: '+33 7 45 49 63 06',
                            onTap: () => _launchUrl('tel:+33745496306'),
                          ),
                        ),
                        DelayedAnimation(
                          delay: 500,
                          startOffsetX: -0.0,
                          startOffsetY: 0.2,
                          child: ContactTile(
                            icon: Icons.message,
                            title: 'MS-Teams / Telegram',
                            subtitle: 'sultan_brunel',
                            onTap: () =>
                                _launchUrl('https://t.me/+237691322304'),
                          ),
                        ),
                        DelayedAnimation(
                          delay: 400,
                          startOffsetX: -0.0,
                          startOffsetY: 0.2,
                          child: ContactTile(
                            icon: Icons.link,
                            title: 'LinkedIn',
                            subtitle:
                                'linkedin.com/in/abdel-raoufou-lindou-ngapout-339835328/',
                            onTap: () => _launchUrl(
                              'https://www.linkedin.com/in/abdel-raoufou-lindou-ngapout-339835328/',
                            ),
                          ),
                        ),

                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
