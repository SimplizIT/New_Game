require 'rails_helper'

RSpec.describe "cards/index", :type => :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :fname => "Fname",
        :lname => "Lname",
        :card_number => 1
      ),
      Card.create!(
        :fname => "Fname",
        :lname => "Lname",
        :card_number => 1
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
