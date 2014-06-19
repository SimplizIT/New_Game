require 'rails_helper'

RSpec.describe "cards/show", :type => :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :fname => "Fname",
      :lname => "Lname",
      :card_number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fname/)
    expect(rendered).to match(/Lname/)
    expect(rendered).to match(/1/)
  end
end
