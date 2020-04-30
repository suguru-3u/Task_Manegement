FactoryBot.define do
  factory :task do
    name{'テストを書く'}
    description{'いろいろ準備する'}
    user
  end
end
