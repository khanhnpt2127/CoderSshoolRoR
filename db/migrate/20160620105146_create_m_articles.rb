class CreateMArticles < ActiveRecord::Migration
  def change
    create_table :m_articles do |t|

      t.timestamps null: false
    end
  end
end
