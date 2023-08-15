class AddCheckboxesToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :checkboxes, :string
  end
end
