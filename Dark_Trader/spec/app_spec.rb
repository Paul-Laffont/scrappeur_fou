require_relative '../lib/app'

describe "crypto inventory functions" do

    it "get the names of the crypto" do
        expect(perform('Agrocoin')).to eq('Agrocoin')
    end

end