@echo off
echo 🧪 Test de déploiement LindouCV
echo ================================

REM Vérifier que Flutter est installé
flutter --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Flutter n'est pas installé
    exit /b 1
)

echo ✅ Flutter détecté

REM Vérifier que Firebase CLI est installé
firebase --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Firebase CLI n'est pas installé
    echo Installez-le avec: npm install -g firebase-tools
    exit /b 1
)

echo ✅ Firebase CLI détecté

REM Nettoyer et récupérer les dépendances
echo 📦 Récupération des dépendances...
flutter clean
flutter pub get

REM Build de l'application
echo 🔨 Build de l'application web...
flutter build web --release

REM Vérifier que le build a réussi
if not exist "build\web" (
    echo ❌ Le build a échoué
    exit /b 1
)

echo ✅ Build réussi

REM Test local avec Firebase
echo 🚀 Test local avec Firebase...
firebase serve --only hosting

echo ✅ Test de déploiement terminé!
echo 🌐 Votre application est disponible sur http://localhost:5000 