class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :birthplace
      t.string :purpose
      t.string :paper
      t.string :carrier_jun
      t.string :carrier_high
      t.string :carrier_univ
      t.string :carrier_univ_mas
      t.string :carrier_work
      t.string :experience
      t.date :birthday
      t.string :insta
      t.string :twitter
      t.string :skill
      t.references :articles

      t.timestamps
    end
  end
end
