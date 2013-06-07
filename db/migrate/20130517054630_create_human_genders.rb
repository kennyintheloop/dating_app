class CreateHumanGenders < ActiveRecord::Migration
  def change
    create_table :human_genders do |t|
      t.string :gender

      t.timestamps
    end
  end
end
