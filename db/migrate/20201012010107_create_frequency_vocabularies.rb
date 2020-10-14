class CreateFrequencyVocabularies < ActiveRecord::Migration[6.0]
  def change
    create_table :frequency_vocabularies do |t|
      t.text :text
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
