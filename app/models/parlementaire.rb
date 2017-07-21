class Parlementaire < ApplicationRecord
  include AlgoliaSearch

  algoliasearch auto_index: false, auto_remove: false do
    attribute :id,:type,:twitter,:nom,:nom_de_famille,:prenom,:sexe, :displayed_type, :groupe_sigle, :nom_circo, :num_circo, :num_deptmt, :twitter_tweets,:twitter_followers,:twitter_following,:twitter_listed,:twitter_favourites,:twitter_verified,:twitter_protected,:twitter_id,:twitter_name,:twitter_description,:twitter_created_at,:sites_web,:url_institution,:slug,:url_api,:profile_image_url,:profile_image_url_https
    searchableAttributes ["type","twitter","nom","nom_de_famille","prenom","groupe_sigle","nom_circo","num_circo","num_deptmt","twitter_name","twitter_description"]
    # tags used for filtering
    tags do
      [type]
    end
  end
end
