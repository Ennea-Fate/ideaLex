class CreateEthnoidioglosses < ActiveRecord::Migration[6.0]
  def change
    create_table :ethnoidioglosses do |t|
      t.string :word
      t.text :description
      t.integer :status
      t.references :author, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
