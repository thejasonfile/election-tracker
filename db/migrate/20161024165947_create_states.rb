class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :electoral_votes
      t.string :predicted
      t.boolean :called
      t.string :picture_url
      t.integer :candidate_id

      t.timestamps
    end
  end
end
