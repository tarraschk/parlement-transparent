# Parlement Transparent

## Initialisation de l'application Rails

Avec Ruby on Rails, installer les dépendances via `bundle install` et `rails db:create`.

## Import des données

Il faut tout d'abord créer un compte Algolia (un compte gratuit suffit).

Ensuite, il faut récupérer ses clés d'API et remplacer les champs correspondants dans :

	app/assets/javascripts/home/main.coffee
	config/initializers/algoliasearch.rb

Il suffit alors de faire `rails db:seed` pour importer les données en fonction des commandes définies dans le fichier `db/seeds.rb`.

Ainsi, afin d'adapter l'application aux parlementaires d'un autre pays, remplacer la fonction d'import fera le travail.

## Mettre à jour les données des parlementaires français

L'application utilise l'excellent module "twitter-parlementaires", que l'on peut mettre à jour via les fichiers et la documentation du répertoire `vendor/twitter-parlementaires`.
