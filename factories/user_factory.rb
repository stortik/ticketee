require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "user#{n}@ticketee.com"
    end
    password 'password'
    password_confirmation 'password'
  end
end
