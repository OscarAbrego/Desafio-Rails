class AddHeroeToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :heroe, :string
  end
end
