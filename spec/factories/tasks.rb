# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "Task #{n}" }
    description { "Description" }
    status { "undone" }
  end
end
