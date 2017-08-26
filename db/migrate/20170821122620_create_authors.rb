class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.column :name, :string
      t.column :description, :string
      t.timestamps null: false
    end
  end
end
