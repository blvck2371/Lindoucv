import 'package:flutter/material.dart';
import 'package:lindoucv/features/contact/widgets/ContactTile.dart';
import 'package:lindoucv/shared/widgets/annimation.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:lindoucv/core/theme/app_colors.dart';
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contactez-moi',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                12.vSpace,
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'N\'hésitez pas à me contacter pour une collaboration, des questions ou simplement pour dire bonjour ! ',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                          ),
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
