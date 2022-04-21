FactoryBot.define do
  factory :user do
    email { john@email.com }
    password { 123123 }
    name { 'john' }
    number { 13183288 }
  end
end