require 'rails_helper'

RSpec.describe Card, :type => :model do
  
  let(:card) { Card.create!(fname: 'JJJJ', lname: 'dddd', card_number: 959595959595) }
  it 'can be saved' do
    expect{ card }.to be_an_instance_of(:card)
  end
end
