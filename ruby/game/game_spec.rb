

require_relative 'game_program'

describe Class do 
	let(:blerg) { Game.new}

it "checks the guess word to see if it is in array" do 
		guess_word = "k"
		
		expect(blerg.arr_check(guess_word)).to be false
	end 

it "returns not found" do 
	@secret_word = "jay"
		expect(blerg.hint_check("z")).to eq puts "Letter not found"
	end 

it "converts letter into hint word if matching" do 
	@secret_word = "jay"
		expect(blerg.hint_check("a")).to eq puts "You're close '_ a _ '"
	end 

it "converts letter into hint word if matching" do 

		expect(blerg.hint_check("j")).to eq puts "You're close 'j _ _ '"
	end 

end
