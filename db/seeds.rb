8.times do |i|
    property = Property.create!(
        name: Faker::Lorem.unique.word,
        headline: Faker::Lorem.unique.sentence,
        description: Faker::Lorem.unique.paragraph,
        address_1: Faker::Address.full_address,
        zip_code: Faker::Address.zip_code,
        city: Faker::Address.city,
        state: Faker::Address.state,
        country: 'United States',
        price_cents:100000
    )

    property.images.attach(io: File.open(Rails.root.join("db", "sample", "images", "property_#{i + 1}.jpg")), filename: property.name)

    (1..5).to_a.sample.times do 
        Review.create(reviewable: property, rating: (1..5).to_a.sample, title: Faker::Lorem.word, body: Faker::Lorem.paragraph)
    end
end