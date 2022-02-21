class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :namee
      t.string :address

      t.belongs_to :account

      t.timestamps
    end

    add_reference :contacts, :organizations
  end
end
