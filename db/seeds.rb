# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.create!([
    {
        title: 'Coder Academy', street_address: '120 Spencer St', city: 'Melbourne', country_code: 'au', bed_count: 35, bedroom_count: 1, bathroom_count: 3, description: 'Cosy up to code', night_fee_cents: rand(1000..10000), cleaning_fee_cents: rand(1000..10000)
    },
    {
        title: 'Mt Maunganui', street_address: '135 Newton Road', city: 'Auckland', country_code: 'nz', bed_count: 5, bedroom_count: 2, bathroom_count: 3, description: 'Nice weekend climb', night_fee_cents: rand(1000..10000), cleaning_fee_cents: rand(1000..10000)
    },
    {
        title: 'Boracay Beach Club', street_address: 'Boracay Beach Club Balabag Station 1', city: 'Boracay', country_code: 'ph', bed_count: 2, bedroom_count: 1, bathroom_count: 1, description: 'Good sunset', night_fee_cents: rand(1000..10000), cleaning_fee_cents: rand(1000..10000)
    },
    {
        title: 'White House', street_address: '1600 Pennsylvania Avenue NW', city: 'Washington, DC', country_code: 'us', night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000), bed_count: rand(1..20), bedroom_count: rand(1..20), bathroom_count: rand(1..20)
    },
    {
        title: 'Eiffel Tower', street_address: 'Champ de Mars, 5 Avenue Anatole France', city: 'Paris', country_code: 'fr', night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000), bed_count: rand(1..20), bedroom_count: rand(1..20), bathroom_count: rand(1..20)
    },
    {
        title: 'Big Ben', street_address: 'Big Ben, Westminster', city: 'London', country_code: 'gb', night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000), bed_count: rand(1..20), bedroom_count: rand(1..20), bathroom_count: rand(1..20)
    },
    {
        title: 'Eureka Tower', street_address: '7 Riverside Quay', city: 'Southbank', country_code: 'au', night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000), bed_count: rand(1..20), bedroom_count: rand(1..20), bathroom_count: rand(1..20)
    },
    {
        title: 'Burj Khalifa', street_address: '1 Sheikh Mohammed bin Rashid Blvd', city: 'Dubai', country_code: 'ae', night_fee_cents: rand(2000..20000), cleaning_fee_cents: rand(1000..10000), bed_count: rand(1..20), bedroom_count: rand(1..20), bathroom_count: rand(1..20)
    }
])