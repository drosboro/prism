# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    email "fred.foonly@example.com"
    password "my_password"
    # after(:create) do |user|
    # 	FactoryGirl.create(:prism)
    # end
   # assocation :prism, :factory => :prism
  end
end