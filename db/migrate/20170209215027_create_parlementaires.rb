class CreateParlementaires < ActiveRecord::Migration[5.0]
  def change
    create_table :parlementaires do |t|
      t.string :type
      t.string :twitter
      t.string :nom
      t.string :nom_de_famille
      t.string :prenom
      t.string :sexe
      t.string :groupe_sigle
      t.string :nom_circo
      t.string :num_circo
      t.string :num_deptmt
      t.integer :twitter_tweets
      t.integer :twitter_followers
      t.integer :twitter_following
      t.integer :twitter_listed
      t.integer :twitter_favourites
      t.boolean :twitter_verified
      t.boolean :twitter_protected
      t.string :twitter_id
      t.string :twitter_name
      t.string :twitter_description
      t.datetime :twitter_created_at
      t.string :sites_web
      t.string :url_institution
      t.string :slug
      t.string :url_api
      t.string :profile_image_url
      t.string :profile_image_url_https

      t.timestamps
    end
  end
end
