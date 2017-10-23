# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

require "pig_latin"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    expect(translate("apple")).to eq("appleay")
  end

  it "translates a word beginning with a consonant" do
    expect(translate("banana")).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    expect(translate("cherry")).to eq("errychay")
  end

  it "translates two words" do
    expect(translate("eat pie")).to eq("eatay iepay")
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq("eethray")
  end

  it "counts 'sch' as a single phoneme" do
    expect(translate("school")).to eq("oolschay")
  end

  it "counts 'qu' as a single phoneme" do
    expect(translate("quiet")).to eq("ietquay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    expect(translate("square")).to eq("aresquay")
  end

  it "translates many words" do
    expect(translate("the quick brown fox")).to eq("ethay ickquay ownbray oxfay")
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

  it "keeps word capitalization" do
    expect(translate("A Stitch in Time")).to eq("Aay Itchstay inay Imetay")
  end

  it "retains original punctuation" do
    expect(translate("Hey, thanks! OK? No problem.")).to eq("Eyhay, anksthay! Okay? Onay oblempray.")
  end

end
