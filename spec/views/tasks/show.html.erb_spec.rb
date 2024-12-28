# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "tasks/show", type: :view do
  before do
    assign(:task, create(:task))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Task/)
    expect(rendered).to match(/Description/)
  end
end
