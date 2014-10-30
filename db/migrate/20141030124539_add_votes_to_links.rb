class AddVotesToLinks < ActiveRecord::Migration
  def change
    add_column :links, :votes, :integer, default: 0
  end
end
