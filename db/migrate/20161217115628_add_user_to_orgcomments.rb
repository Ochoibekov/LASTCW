class AddUserToOrgcomments < ActiveRecord::Migration[5.0]
  def change
    add_reference :orgcomments, :user, foreign_key: true
  end
end
