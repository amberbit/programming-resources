class AddSubjectNameToLinks < ActiveRecord::Migration
  def change
    add_column :links, :subject_name, :string
  end
end
