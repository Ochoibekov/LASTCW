class AddCategoryToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_reference :organizations, :category, foreign_key: true
  end
end
