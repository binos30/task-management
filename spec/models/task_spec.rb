# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "db_columns" do
    it { should have_db_column(:title).of_type(:string).with_options(null: false) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:status).of_type(:string).with_options(null: false) }
  end

  describe "db_indexes" do
    it { should have_db_index(:title).unique }
  end

  describe "validations" do
    describe "presence" do
      it { should validate_presence_of(:title) }
    end

    describe "inclusion" do
      it { should validate_inclusion_of(:status).in_array(Task.statuses.keys) }
    end


    describe "uniqueness" do
      subject { build :task }

      it { should validate_uniqueness_of(:title).case_insensitive }
    end
  end
end
