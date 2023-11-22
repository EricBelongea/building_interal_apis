# FactoryBot.define do
#   factory :book do
#     title { "MyString" }
#     author { "MyString" }
#     genre { "MyString" }
#     summary { "MyText" }
#     number_sold { 1 }
#   end
# end
FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    genre { Faker::Book.genre }
    summary { Faker::Lorem.paragraph }
    number_sold { Faker::Number.within(range: 1..1000) }
  end
end