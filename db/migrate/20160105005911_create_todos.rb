class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :comment
      t.boolean :done

      t.timestamps null: false
    end
  end
end
