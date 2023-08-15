class AddCheckboxesToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :checkboxes, :string
  end
end
