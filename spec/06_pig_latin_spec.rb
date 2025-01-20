require_relative '../lib/06_pig_latin'

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    expect(s).to eq("appleay")
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    expect(s).to eq("ananabay")
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    expect(s).to eq("yrrehcay")
  end

  it "translates two words" do
    s = translate("eat pie")
    expect(s).to eq("eat pieay")
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to eq("eerhtay")
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s).to eq("loohcsay")
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s).to eq("teiuqay")
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s).to eq("erauqsay")
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s).to eq("xof nworb kciuq ehtay")
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

end