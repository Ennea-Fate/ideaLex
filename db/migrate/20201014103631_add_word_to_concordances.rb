class AddWordToConcordances < ActiveRecord::Migration[6.0]
  def change
    add_column :concordances, :word, :string
  end
end
