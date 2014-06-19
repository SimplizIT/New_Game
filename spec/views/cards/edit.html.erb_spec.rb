require 'rails_helper'

RSpec.describe "cards/edit", :type => :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :fname => "MyString",
      :lname => "MyString",
      :card_number => 1
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input#card_fname[name=?]", "card[fname]"

      assert_select "input#card_lname[name=?]", "card[lname]"

      assert_select "input#card_card_number[name=?]", "card[card_number]"
    end
  end
end
