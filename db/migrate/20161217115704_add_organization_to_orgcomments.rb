class AddOrganizationToOrgcomments < ActiveRecord::Migration[5.0]
  def change
    add_reference :orgcomments, :organization, foreign_key: true
  end
end
