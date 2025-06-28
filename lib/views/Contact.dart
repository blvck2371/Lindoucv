import 'package:flutter/material.dart';
import 'package:lindoucv/componentview/ContactTile.dart';
import 'package:lindoucv/theme/app_spacing.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
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
                Text('Contact Me', style: TextStyle(fontSize: 18)),
                12.vSpace,
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Feel free to reach out for collaboration, questions, or just to say hello!',
                        ),
                        const SizedBox(height: 20),

                        ContactTile(
                          icon: Icons.email,
                          title: 'Email',
                          subtitle: 'lindoungapoutabdel@gmail.com',
                          onTap: () =>
                              _launchUrl('mailto:lindoungapoutabdel@gmail.com'),
                        ),
                        ContactTile(
                          icon: Icons.phone,
                          title: 'Telephone',
                          subtitle: '+33745496306',
                          onTap: () => _launchUrl('tel:+33745496306'),
                        ),
                        ContactTile(
                          icon: Icons.message,
                          title: 'MS-Teams/Telegram',
                          subtitle: 'sultan_brunel',
                          onTap: () => _launchUrl('https://t.me/+237691322304'),
                        ),
                        ContactTile(
                          icon: Icons.link,
                          title: 'LinkedIn',
                          subtitle:
                              '/www.linkedin.com/in/abdel-raoufou-lindou-ngapout-339835328/',
                          onTap: () => _launchUrl(
                            'https://www.linkedin.com/in/abdel-raoufou-lindou-ngapout-339835328/',
                          ),
                        ),

                        const Spacer(), // pousse le contenu vers le haut sur grand écran
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
