class AddExcerptAndLocationToArticle < ActiveRecord::Migration
  def change
    add_column :article, :excerpt, :string
    add_column :article, :location, :string
  end
end
