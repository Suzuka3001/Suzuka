class AddLimitDateToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :limit_date, :date
  end
end
