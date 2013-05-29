# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :associate do
    name "MyString"
    email "MyString"
    bio "MyString"
    group_id 1
    admin false
  end
end
