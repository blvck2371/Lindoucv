# 🔧 Importations à Corriger

## ❌ Importations Incorrectes Détectées

Après la réorganisation de la structure, plusieurs importations ne correspondent plus aux nouveaux chemins. Voici la liste complète des corrections nécessaires :

### 1. **lib/main.dart**
```dart
// ❌ ANCIEN
import 'package:lindoucv/pages/pagedeux.dart';
import 'package:lindoucv/theme/app_theme.dart';
import 'package:lindoucv/theme/theme_controller.dart';
import 'package:lindoucv/views/home.dart';

// ✅ NOUVEAU
import 'package:lindoucv/features/home/views/pagedeux.dart';
import 'package:lindoucv/core/theme/app_theme.dart';
import 'package:lindoucv/core/theme/theme_controller.dart';
import 'package:lindoucv/features/home/views/home.dart';
```

### 2. **lib/index.dart**
```dart
// ❌ ANCIEN
import 'package:lindoucv/theme/theme_controller.dart';
import 'package:lindoucv/views/Competences.dart';
import 'package:lindoucv/views/Contact.dart';
import 'package:lindoucv/views/Experiences.dart';
import 'package:lindoucv/views/home.dart';

// ✅ NOUVEAU
import 'package:lindoucv/core/theme/theme_controller.dart';
import 'package:lindoucv/features/competences/views/Competences.dart';
import 'package:lindoucv/features/contact/views/Contact.dart';
import 'package:lindoucv/features/experiences/views/Experiences.dart';
import 'package:lindoucv/features/home/views/home.dart';
```

### 3. **lib/features/home/views/home.dart**
```dart
// ❌ ANCIEN
import 'package:lindoucv/componentview/CardOfCompetence.dart';
import 'package:lindoucv/componentview/CardofRecentExperience.dart';
import 'package:lindoucv/componentview/annimation.dart';
import 'package:lindoucv/componentview/titleAndViewAll.dart';
import 'package:lindoucv/theme/app_spacing.dart';
import 'package:lindoucv/theme/theme_controller.dart';

// ✅ NOUVEAU
import 'package:lindoucv/features/competences/widgets/CardOfCompetence.dart';
import 'package:lindoucv/features/home/widgets/CardofRecentExperience.dart';
import 'package:lindoucv/shared/widgets/annimation.dart';
import 'package:lindoucv/shared/widgets/titleAndViewAll.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
import 'package:lindoucv/core/theme/theme_controller.dart';
```

### 4. **lib/features/experiences/views/Experiences.dart**
```dart
// ❌ ANCIEN
import 'package:lindoucv/componentview/ExperiencesComponent.dart';
import 'package:lindoucv/theme/app_spacing.dart';

// ✅ NOUVEAU
import 'package:lindoucv/features/experiences/widgets/ExperiencesComponent.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
```

### 5. **lib/features/competences/views/Competences.dart**
```dart
// ❌ ANCIEN
import 'package:lindoucv/componentview/CardOfCompetence.dart';
import 'package:lindoucv/theme/app_spacing.dart';

// ✅ NOUVEAU
import 'package:lindoucv/features/competences/widgets/CardOfCompetence.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
```

### 6. **lib/features/contact/views/Contact.dart**
```dart
// ❌ ANCIEN
import 'package:lindoucv/componentview/ContactTile.dart';
import 'package:lindoucv/componentview/annimation.dart';
import 'package:lindoucv/theme/app_spacing.dart';

// ✅ NOUVEAU
import 'package:lindoucv/features/contact/widgets/ContactTile.dart';
import 'package:lindoucv/shared/widgets/annimation.dart';
import 'package:lindoucv/core/theme/app_spacing.dart';
```

## 📋 Actions à Effectuer

### Étape 1 : Corriger les imports principaux
1. `lib/main.dart` - 4 imports à corriger
2. `lib/index.dart` - 5 imports à corriger

### Étape 2 : Corriger les imports des vues
1. `lib/features/home/views/home.dart` - 6 imports à corriger
2. `lib/features/experiences/views/Experiences.dart` - 2 imports à corriger
3. `lib/features/competences/views/Competences.dart` - 2 imports à corriger
4. `lib/features/contact/views/Contact.dart` - 3 imports à corriger

### Étape 3 : Vérifier les widgets
Vérifier que tous les widgets dans les dossiers `widgets/` n'ont pas d'imports incorrects.

## ⚠️ Important

- **Ne pas modifier le code source** - seulement les chemins d'import
- **Tester après chaque correction** pour s'assurer que l'app fonctionne
- **Vérifier les imports dans les widgets** si nécessaire

## 🚀 Après les corrections

Une fois toutes les importations corrigées, votre application devrait fonctionner normalement avec la nouvelle structure organisée ! 