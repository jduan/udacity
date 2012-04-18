require_relative 'single_hyphenated_words'

describe 'single_hyphenated_words' do
  sentence = <<-HERE
  the wide-field infrared survey explorer is a nasa
  infrared-wavelength space telescope in an earth-orbiting satellite which
  performed an all-sky astronomical survey. be careful of -tricky tricky-
  hyphens --- be precise.
  HERE

  it "example sentence should work" do
    expected_array = ['the', 'wide-field', 'infrared', 'survey', 'explorer',
      'is', 'a', 'nasa', 'infrared-wavelength', 'space', 'telescope', 'in', 'an',
      'earth-orbiting', 'satellite', 'which', 'performed', 'an', 'all-sky',
      'astronomical', 'survey', 'be', 'careful', 'of', 'tricky', 'tricky',
      'hyphens', 'be', 'precise']
    break_words(sentence).should == expected_array
  end
end
