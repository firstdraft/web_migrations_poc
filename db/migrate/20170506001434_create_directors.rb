class CreateDirectors < ActiveRecord::Migration[5.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :dob
      t.text :bio

      t.timestamps
    end
  end
end
