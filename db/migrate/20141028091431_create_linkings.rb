class CreateLinkings < ActiveRecord::Migration
  def change
    create_table :linkings do |t|
      t.references :link, index: true
      t.references :subject, index: true

      t.timestamps
    end
  end
end
