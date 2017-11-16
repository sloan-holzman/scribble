class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :category, foreign_key: true, null: false
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end
end
