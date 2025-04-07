# tp_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Réponse aux questions du tp_flutter

## Pourquoi utiliser un factory constructor ?
Un factory constructor permet de créer une instance d’une classe à partir d’une autre source, comme un JSON.
Il est très utilisé pour la désérialisation des données

## Pourquoi utiliser notifyListeners() ?
notifyListeners() est utilisé pour informer toutes les vues (widgets) qui écoutent le ViewModel (ou un ChangeNotifier) que l’état a changé.
Cela déclenche une reconstruction automatique des widgets dépendants (via Consumer ou Provider.of), et permet ainsi à l'interface utilisateur de se mettre à jour.

## Que se passe-t-il si on oublie notifyListeners() ?
Si on oublie d'appeler notifyListeners() :
- Le changement d’état a lieu dans le ViewModel, mais l’UI ne sera pas mise à jour.
- L'utilisateur ne verra pas les nouvelles données ou les changements 
- Résultat : l'app semble figée ou incorrecte, même si les données sont bien chargées.

## Quelle est la responsabilité du ViewModel dans MVVM ?

Le ViewModel est responsable de :

- Contenir la logique métier (ex : récupérer des données d’une API, filtrer, transformer).
- Gérer l’état de l’application 
- Notifier la vue quand l’état change (avec notifyListeners()).
- Agir comme un pont entre le modèle (données) et la vue (UI), sans dépendre de la UI elle-même.
- La Vue écoute le ViewModel et se met à jour en fonction.
