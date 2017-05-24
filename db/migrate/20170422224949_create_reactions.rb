class CreateReactions < ActiveRecord::Migration[5.0]
  def change
    create_table :reactions do |t|
      t.string :sentiment
      t.references :idea, foreign_key: true

      t.timestamps
    end
  end
end
