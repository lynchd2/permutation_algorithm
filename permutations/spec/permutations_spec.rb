require 'permutations'
require "spec_helper.rb"

RSpec.describe "#permutations" do
  it "returns the permutation of a two letters" do
    expect(permutations("aa")).to eq(["aa"])
  end

  it "raises an error if the given input is not a string" do
    expect{permutations(12)}.to raise_error{ArgumentError}
  end

  it "returns a permutation of three letters" do
    expect(permutations("aab")).to eq(["aab", "aba", "baa"])
  end

  it "returns a permutation without doubles and not split" do
    expect(permutations("aab")).not_to eq([["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "b", "a"], ["a", "b", "a"], ["a", "b", "b"], ["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "b", "a"], ["a", "b", "a"], ["a", "b", "b"], ["b", "a", "a"], ["b", "a", "a"], ["b", "a", "b"], ["b", "a", "a"], ["b", "a", "a"], ["b", "a", "b"], ["b", "b", "a"], ["b", "b", "a"], ["b", "b", "b"]])
  end

  it "returns a permutation without doubles but still returns single array of strings" do
    expect(permutations("aab")).not_to eq([["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "b", "a"], ["a", "b", "a"], ["a", "b", "b"], ["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "a", "a"], ["a", "a", "a"], ["a", "a", "b"], ["a", "b", "a"], ["a", "b", "a"], ["a", "b", "b"], ["b", "a", "a"], ["b", "a", "a"], ["b", "a", "b"], ["b", "a", "a"], ["b", "a", "a"], ["b", "a", "b"], ["b", "b", "a"], ["b", "b", "a"], ["b", "b", "b"]])
  end
  
end