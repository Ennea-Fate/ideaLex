class CreateEigStatusVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :eig_status_votes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ethnoidiogloss, null: false, foreign_key: true

      t.timestamps
    end
  end
end
