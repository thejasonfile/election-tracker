class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :electoral_votes
      t.string :predicted
      t.string :winner
      t.boolean :called, default: false
      t.string :picture_url
      t.integer :candidate_id, default: 1

      t.timestamps
    end
  end
end
