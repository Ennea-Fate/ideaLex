class CreateGrammarDictionaries < ActiveRecord::Migration[6.0]
  def change
    create_table :grammar_dictionaries do |t|
      t.text :dictionary
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
