class AddAttributesToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :country, :string,   null: false, default: ""
    add_column :addresses, :city, :string,      null: false, default: ""
    add_column :addresses, :street, :string,    null: false, default: ""
      
    end
end
