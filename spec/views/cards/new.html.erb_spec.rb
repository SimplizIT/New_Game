require 'rails_helper'

RSpec.describe "cards/new", :type => :view do
  before(:each) do
    assign(:card, Card.new(
      :fname => "MyString",
      :lname => "MyString",
      :card_number => 1
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input#card_fname[name=?]", "card[fname]"

      assert_select "input#card_lname[name=?]", "card[lname]"

      assert_select "input#card_card_number[name=?]", "card[card_number]"
    end
  end
end
