FactoryGirl.define do
    factory :user do
        name        "Victor Lutin"
        email       "victor.lutin@gmail.com"
        password    "foobar"
        password_confirmation   "foobar"
    end
end
