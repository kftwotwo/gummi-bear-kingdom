require 'rails_helper'

describe Product do
  it { should have_db_column :name }
  it { should have_db_column :price }
  it { should have_db_column :made_from }
  it { should have_db_column :picture }
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :made_from }
  it { should validate_presence_of :picture }
  it { should have_many :reviews }
end
