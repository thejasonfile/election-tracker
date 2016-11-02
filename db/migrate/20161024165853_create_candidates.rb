class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.integer :electoral_votes, default: 0

      t.timestamps
    end
  end
end
