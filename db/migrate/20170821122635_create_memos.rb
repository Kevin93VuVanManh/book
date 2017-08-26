class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.column :book_id, :integer
      t.column :memo_1, :string
      t.column :memo_2, :string
      t.column :memo_3, :string
      t.timestamps null: false
    end
  end
end
