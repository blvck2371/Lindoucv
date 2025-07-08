# 🚀 Déploiement Automatique - LindouCV

## 📋 Vue d'ensemble

Ce projet est configuré pour un déploiement automatique sur Firebase Hosting via GitHub Actions.

## ⚡ Déploiement Rapide

### 1. **Configuration Firebase (une seule fois)**

```bash
# Installer Firebase CLI
npm install -g firebase-tools

# Se connecter à Firebase
firebase login

# Initialiser le projet
firebase init hosting
```

### 2. **Configuration GitHub Secrets**

Dans votre repo GitHub : **Settings** > **Secrets and variables** > **Actions**

Ajoutez ces secrets :
- `FIREBASE_SERVICE_ACCOUNT_MYTODO_C0F69` : Clé de service Firebase (JSON)
- `FIREBASE_PROJECT_ID` : ID de votre projet Firebase (mytodo-c0f69)

### 3. **Déploiement automatique**

Maintenant, chaque push vers `main` déclenche automatiquement :
1. ✅ Build de l'application Flutter web
2. ✅ Déploiement sur Firebase Hosting
3. ✅ Mise à jour de votre site en ligne

## 🔧 Workflows GitHub Actions

### Production (main)
- **Fichier** : `.github/workflows/deploy-lindoucv.yml`
- **Déclenchement** : Push vers `main`
- **URL** : `https://mytodo-c0f69.web.app`

### Preview (Pull Requests)
- **Fichier** : `.github/workflows/preview-lindoucv.yml`
- **Déclenchement** : Pull Request vers `main`
- **URL** : `https://mytodo-c0f69--pr-[PR_NUMBER].web.app`

## 🧪 Test Local

### Windows
```cmd
scripts\test-deployment.bat
```

### Linux/Mac
```bash
chmod +x scripts/test-deployment.sh
./scripts/test-deployment.sh
```

## 📊 Monitoring

### GitHub Actions
- Voir les logs : **Actions** > **Deploy LindouCV to Firebase Hosting**
- Statut : Vert = succès, Rouge = échec

### Firebase Console
- Voir les déploiements : **Hosting** > **Deployments**
- Analytics : **Analytics** > **Dashboard**

## 🔧 Dépannage

### Erreurs courantes

1. **"Firebase project not found"**
   ```bash
   # Vérifier le projectId
   firebase projects:list
   ```

2. **"Permission denied"**
   - Vérifiez la clé de service dans GitHub Secrets
   - Régénérez la clé si nécessaire

3. **"Build failed"**
   ```bash
   # Test local
   flutter build web --release
   ```

## 🎯 Avantages

- ✅ **Déploiement automatique** sur chaque push
- ✅ **Preview automatique** sur les PR
- ✅ **Build optimisé** en mode release
- ✅ **Monitoring complet** via GitHub Actions
- ✅ **Rollback facile** via Firebase Console

## 🌐 URLs

- **Production** : `https://mytodo-c0f69.web.app`
- **Preview** : `https://mytodo-c0f69--pr-[PR_NUMBER].web.app`
- **Local** : `http://localhost:5000`

## 📝 Notes

- Le déploiement prend environ 2-3 minutes
- Les previews sont automatiquement supprimées après merge
- Tous les builds sont optimisés pour la production

---

**Votre CV sera toujours à jour ! 🎉** 