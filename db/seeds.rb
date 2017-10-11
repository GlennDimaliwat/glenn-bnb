# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Listing.create!(title: 'Coder Academy', street_address: '120 Spencer St', city: 'Melbourne', country_code: 'au', bed_count: 35, bedroom_count: 1, bathroom_count: 3, description: 'Cosy up to code', night_fee_cents: 5000, cleaning_fee_cents: 1000)

Listing.create!(title: 'Mt Maunganui', street_address: '135 Newton Road', city: 'Auckland', country_code: 'nz', bed_count: 5, bedroom_count: 2, bathroom_count: 3, description: 'Nice weekend climb', night_fee_cents: 6000, cleaning_fee_cents: 2000)

Listing.create!(title: 'Boracay Beach Club', street_address: 'Boracay Beach Club Balabag Station 1', city: 'Boracay', country_code: 'ph', bed_count: 2, bedroom_count: 1, bathroom_count: 1, description: 'Good sunset', night_fee_cents: 7000, cleaning_fee_cents: 3000)
