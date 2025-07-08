# 🚀 Guide de Déploiement Automatique - LindouCV

## 📋 Configuration Firebase

### 1. **Créer un projet Firebase**

1. Allez sur [Firebase Console](https://console.firebase.google.com/)
2. Cliquez sur "Créer un projet"
3. Nommez votre projet (ex: `lindoucv`)
4. Suivez les étapes de configuration

### 2. **Activer Firebase Hosting**

```bash
# Installer Firebase CLI globalement
npm install -g firebase-tools

# Se connecter à Firebase
firebase login

# Initialiser Firebase dans votre projet
firebase init hosting

# Sélectionner votre projet
# Public directory: build/web
# Single-page app: Yes
# Overwrite index.html: No
```

### 3. **Configurer firebase.json**

Le fichier `firebase.json` est déjà configuré correctement :
```json
{
  "hosting": {
    "public": "build/web",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ]
  }
}
```

## 🔐 Configuration des Secrets GitHub

### 1. **Obtenir la clé de service Firebase**

```bash
# Générer la clé de service
firebase projects:list
firebase projects:addfirebase lindoucv
firebase projects:list
firebase projects:get-iam-policy lindoucv > policy.json
```

Ou via la console Firebase :
1. Allez dans **Paramètres du projet** > **Comptes de service**
2. Cliquez sur **Générer une nouvelle clé privée**
3. Téléchargez le fichier JSON

### 2. **Ajouter les secrets dans GitHub**

1. Allez dans votre repo GitHub
2. **Settings** > **Secrets and variables** > **Actions**
3. Cliquez sur **New repository secret**
4. Ajoutez ces secrets :

| Nom du Secret | Valeur |
|---------------|--------|
| `FIREBASE_SERVICE_ACCOUNT_MYTODO_C0F69` | Contenu du fichier JSON de clé de service |
| `FIREBASE_PROJECT_ID` | ID de votre projet Firebase (mytodo-c0f69) |

## ⚙️ Configuration du Workflow

### 1. **Vérifier le workflow**

Le fichier `.github/workflows/deploy-lindoucv.yml` est déjà créé avec :
- ✅ Déclenchement sur push vers `main`
- ✅ Build Flutter web
- ✅ Déploiement automatique sur Firebase

### 2. **Vérifier le projectId**

Le fichier `.github/workflows/deploy-lindoucv.yml` est configuré avec :
```yaml
projectId: mytodo-c0f69
```

## 🧪 Test du Déploiement

### 1. **Test local**

```bash
# Build local
flutter build web --release

# Test local
firebase serve
```

### 2. **Test du workflow**

1. Faites un commit et push vers `main`
2. Allez dans **Actions** sur GitHub
3. Vérifiez que le workflow s'exécute correctement

## 📊 Monitoring

### 1. **Logs de déploiement**

- GitHub Actions : Voir les logs dans l'onglet **Actions**
- Firebase Console : Voir les déploiements dans **Hosting**

### 2. **URLs de déploiement**

- **Production** : `https://mytodo-c0f69.web.app`
- **Preview** : `https://mytodo-c0f69--pr-[PR_NUMBER].web.app`

## 🔧 Dépannage

### Erreurs courantes :

1. **"Firebase project not found"**
   - Vérifiez le `projectId` dans le workflow
   - Assurez-vous que le projet Firebase existe

2. **"Permission denied"**
   - Vérifiez la clé de service Firebase
   - Assurez-vous que la clé a les bonnes permissions

3. **"Build failed"**
   - Vérifiez que le projet compile localement
   - Regardez les logs d'erreur dans GitHub Actions

## 🎯 Workflow Optimisé

Le workflow créé inclut :

- ✅ **Déclenchement automatique** sur push vers main
- ✅ **Déploiement manuel** possible
- ✅ **Build optimisé** en mode release
- ✅ **Notifications** de succès
- ✅ **Gestion d'erreurs** robuste

## 🚀 Résultat

Une fois configuré, chaque push vers `main` déclenchera automatiquement :
1. Build de l'application Flutter web
2. Déploiement sur Firebase Hosting
3. Mise à jour de votre site en ligne

Votre CV sera toujours à jour ! 🎉 