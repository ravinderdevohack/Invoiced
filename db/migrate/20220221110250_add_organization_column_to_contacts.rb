class AddOrganizationColumnToContacts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :contacts, :organizations
    add_reference :contacts, :organization
  end
end
