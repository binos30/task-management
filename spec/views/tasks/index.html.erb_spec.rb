# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before do
    assign(:tasks, create_pair(:task))
  end

  it "renders a list of tasks" do
    render
    title_selector = 'h5.card-title > a'
    description_selector = 'div.card-text'
    status_selector = 'div.card-footer > small'
    assert_select title_selector, text: Regexp.new("Task"), count: 2
    assert_select description_selector, text: Regexp.new("Description"), count: 2
    assert_select status_selector, text: Regexp.new("Status: Undone"), count: 2
  end
end
