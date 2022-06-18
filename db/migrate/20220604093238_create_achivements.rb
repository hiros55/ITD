class CreateAchivements < ActiveRecord::Migration[6.1]
  def change
    create_table :achivements do |t|
      t.date :startdate
      t.date :enddate
      t.string :name
      t.string :achitype
      t.references :user

      # en
      t.string :name_en
      t.string :achitype_en

      t.timestamps
    end
  end
end
