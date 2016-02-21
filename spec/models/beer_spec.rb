require 'rails_helper'

RSpec.describe Beer, type: :model do

  it 'is not saved without a name and a style' do
    beer = Beer.create name:'Punk IPA'
    beer = Beer.create style: 'IPA'

    expect(beer.name).to eq('Punk Ipa')
    expect(beer.style).to eq('IPA')
  end

  it 'is not created without a name' do
    beer = Beer.create name:'Punk IPA'

    expect(beer.name).to eq('Punk IPA')


  it 'is not created without a style' do
    beer = Beer.create style: 'IPA'

    expect(beer.style).to eq('IPA')
end
  end
end
