class CreateBookEigs < ActiveRecord::Migration[6.0]
  def change
    create_table :book_eigs do |t|
      t.references :book, null: false, foreign_key: true
      t.references :ethnoidiogloss, null: false, foreign_key: true

      t.timestamps
    end
  end
end
