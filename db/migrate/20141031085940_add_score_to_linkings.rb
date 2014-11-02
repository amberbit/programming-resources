class AddScoreToLinkings < ActiveRecord::Migration
  def change
    add_column :linkings, :scores, :integer, default: 0
  end
end
