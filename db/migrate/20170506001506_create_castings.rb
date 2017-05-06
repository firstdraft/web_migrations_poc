class CreateCastings < ActiveRecord::Migration[5.1]
  def change
    create_table :castings do |t|
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :actor, foreign_key: true
      t.string :character_name

      t.timestamps
    end
  end
end
