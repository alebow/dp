# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search do
    company_id 1
    position "MyString"
    confidential false
    open false
    exec_level "MyString"
    exec_function "MyString"
    fee 1
    person_hired "MyString"
    hired_from "MyString"
    comp_base 1
    comp_bonus 1
    notes "MyString"
    associate_id 1
  end
end
