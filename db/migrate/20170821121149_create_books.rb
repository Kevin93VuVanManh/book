class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :url, :string
      t.column :author_id, :string
      t.column :category_id, :integer
      t.column :created_at, :timestamp
      t.timestamps null: false
    end
  end
end
