# frozen_string_literal: true

class Task < ApplicationRecord
  enum :status, { "undone" => "undone", "completed" => "completed" }, default: "undone"

  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :status, inclusion: { in: statuses.keys }

  # Overwrite the setter to rely on validations instead of [ArgumentError]
  # https://github.com/rails/rails/issues/13971#issuecomment-721821257
  def status=(value)
    self[:status] = value
  rescue ArgumentError
    self[:status] = nil
  end
end
