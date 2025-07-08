#!/bin/bash

echo "🧪 Test de déploiement LindouCV"
echo "================================"

# Vérifier que Flutter est installé
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter n'est pas installé"
    exit 1
fi

echo "✅ Flutter détecté"

# Vérifier que Firebase CLI est installé
if ! command -v firebase &> /dev/null; then
    echo "❌ Firebase CLI n'est pas installé"
    echo "Installez-le avec: npm install -g firebase-tools"
    exit 1
fi

echo "✅ Firebase CLI détecté"

# Nettoyer et récupérer les dépendances
echo "📦 Récupération des dépendances..."
flutter clean
flutter pub get

# Build de l'application
echo "🔨 Build de l'application web..."
flutter build web --release

# Vérifier que le build a réussi
if [ ! -d "build/web" ]; then
    echo "❌ Le build a échoué"
    exit 1
fi

echo "✅ Build réussi"

# Test local avec Firebase
echo "🚀 Test local avec Firebase..."
firebase serve --only hosting

echo "✅ Test de déploiement terminé!"
echo "🌐 Votre application est disponible sur http://localhost:5000" 