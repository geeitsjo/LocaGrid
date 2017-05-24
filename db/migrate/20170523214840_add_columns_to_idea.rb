class AddColumnsToIdea < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :contributor, :text
    add_column :ideas, :coverage, :string
    add_column :ideas, :creator, :string
    add_column :ideas, :date, :integer
    add_column :ideas, :artformat, :string
    add_column :ideas, :identifier, :text
    add_column :ideas, :related, :string
    add_column :ideas, :rights, :string
    add_column :ideas, :subject, :text
    add_column :ideas, :arttype, :text
  end
end
