# frozen_string_literal: true

module ApplicationHelper
  def status_class(status)
    case status
    when "undone"
      "text-muted"
    when "completed"
      "text-success"
    else
      "text-muted"
    end
  end
end
