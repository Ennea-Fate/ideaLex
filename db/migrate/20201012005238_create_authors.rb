class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.text :description

      t.timestamps
    end
  end
end
