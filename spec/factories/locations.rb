# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    company_id 1
    headquarters false
    address "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip_code 1
    country "MyString"
    phone_number "MyString"
    country_code "MyString"
  end
end
