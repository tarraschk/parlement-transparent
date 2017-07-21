require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Parlementaire.without_auto_index do
  file = File.read(Rails.root.join('vendor', 'twitter-parlementaires', 'data', 'deputes.json'))
  JSON.parse(file).each do |row|
    Depute.create(
        twitter: row['twitter'],
        nom: row['nom'],
        nom_de_famille: row['nom_de_famille'],
        prenom: row['prenom'],
        sexe: row['sexe'],
        groupe_sigle: row['groupe_sigle'],
        nom_circo: row['nom_circo'],
        num_circo: row['num_circo'],
        num_deptmt: row['num_deptmt'],
        twitter_tweets: row['twitter_tweets'],
        twitter_followers: row['twitter_followers'],
        twitter_following: row['twitter_following'],
        twitter_listed: row['twitter_listed'],
        twitter_favourites: row['twitter_favourites'],
        twitter_verified: row['twitter_verified'],
        twitter_protected: row['twitter_protected'],
        twitter_id: row['twitter_id'],
        twitter_name: row['twitter_name'],
        twitter_description: row['twitter_description'],
        twitter_created_at: row['twitter_created_at'],
        sites_web: row['sites_web'],
        url_institution: row['url_institution'],
        slug: row['slug'],
        url_api: row['url_nosdeputes_api'],
        profile_image_url: row['twitter_data']['profile_image_url'],
        profile_image_url_https: row['twitter_data']['profile_image_url_https']
    )
  end

  file = File.read(Rails.root.join('vendor', 'twitter-parlementaires', 'data', 'senateurs.json'))
  JSON.parse(file).each do |row|
    Senateur.create(
        twitter: row['twitter'],
        nom: row['nom'],
        nom_de_famille: row['nom_de_famille'],
        prenom: row['prenom'],
        sexe: row['sexe'],
        groupe_sigle: row['groupe_sigle'],
        nom_circo: row['nom_circo'],
        num_circo: row['num_circo'],
        num_deptmt: row['num_deptmt'],
        twitter_tweets: row['twitter_tweets'],
        twitter_followers: row['twitter_followers'],
        twitter_following: row['twitter_following'],
        twitter_listed: row['twitter_listed'],
        twitter_favourites: row['twitter_favourites'],
        twitter_verified: row['twitter_verified'],
        twitter_protected: row['twitter_protected'],
        twitter_id: row['twitter_id'],
        twitter_name: row['twitter_name'],
        twitter_description: row['twitter_description'],
        twitter_created_at: row['twitter_created_at'],
        sites_web: row['sites_web'],
        url_institution: row['url_institution'],
        slug: row['slug'],
        url_api: row['url_nossenateurs_api'],
        profile_image_url: row['twitter_data']['profile_image_url'],
        profile_image_url_https: row['twitter_data']['profile_image_url_https']
    )
  end
end
Parlementaire.clear_index!
Parlementaire.reindex!