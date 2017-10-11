class AddHostToListings < ActiveRecord::Migration[5.1]
  def change
    add_reference :listings, :host, foreign_key: { to_table: :users } # Forces rails to not look for a Host table but instead use the Users table
  end
end
