class CreateHumanRelationships < ActiveRecord::Migration
  def change
    create_table :human_relationships do |t|
      t.string :relationship

      t.timestamps
    end
  end
end
