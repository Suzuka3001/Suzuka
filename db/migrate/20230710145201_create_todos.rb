class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :task
      t.datetime :date
      t.date:limit_date
      t.timestamps
    end
  end
end
