class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.references :user
      t.boolean :is_highright
      # en
      t.string :title_en

      t.timestamps
    end
  end
end
