class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :owner, index: true, foriegn_key: {to_table: :users}

      t.timestamps
    end
  end
end
