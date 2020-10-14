class CreateConcordances < ActiveRecord::Migration[6.0]
  def change
    create_table :concordances do |t|
      t.text :concordance
      t.boolean :is_it_lemma
      t.integer :width

      t.timestamps
    end
  end
end
