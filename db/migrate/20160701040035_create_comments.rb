class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :n_article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
