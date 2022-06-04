class CreateAchivements < ActiveRecord::Migration[6.1]
  def change
    create_table :achivements do |t|
      t.date :startdate
      t.date :enddate
      t.string :name
      t.string :achitype

      t.timestamps
    end
  end
end
