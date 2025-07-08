# Shared

Ce dossier contient les éléments partagés et réutilisables dans toute l'application.

## Structure

- `widgets/` - Widgets réutilisables (boutons, cartes, loaders, etc.)
- `constants/` - Constantes globales de l'application

## Rôle

Les fichiers dans ce dossier sont utilisés par plusieurs features et ne doivent pas contenir de logique métier spécifique.

## Bonnes pratiques

- Les widgets doivent être génériques et réutilisables
- Les constantes doivent être centralisées ici
- Éviter les dépendances vers des features spécifiques 