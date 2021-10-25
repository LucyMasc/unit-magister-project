FactoryBot.define do
  factory :user do
    email  {"test@test.com"}
    password  {"abcdef"}
    password_confirmation {"abcdef"}
  end
end
