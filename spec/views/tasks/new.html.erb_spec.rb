# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before do
    assign(:task, build(:task))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input[name=?]", "task[title]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "select[name=?]", "task[status]"
    end
  end
end
