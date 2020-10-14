class CreateConcordanceBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :concordance_books do |t|
      t.references :concordance, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
