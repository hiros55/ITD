class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :birthplace
      t.text :purpose
      t.string :paper
      t.string :carrier_high
      t.string :carrier_univ
      t.string :carrier_univ_mas
      t.string :carrier_work
      t.date :birthday
      t.string :linkedin
      t.string :twitter
      t.string :skill

      # en
      t.string :name_en
      t.string :birthplace_en
      t.text :purpose_en
      t.string :carrier_high_en
      t.string :carrier_univ_en
      t.string :carrier_univ_mas_en
      t.string :carrier_work_en
      t.string :skill_en

      t.timestamps
    end
  end
end
