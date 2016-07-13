require 'spec_helper'

describe Dodiez do

  it "has a version number" do
    expect(Dodiez::VERSION).not_to be nil
  end

  describe "without similar Symbol and String keys" do
    let(:hash) { Dodiez::CoolHash.new({ qaz: 1, "qwert" => 2, 3 => 4, [1] => 5, {e: 0} => 6}) }

    context "symbol key" do
      it "can access as symbol" do
        expect(hash[:qaz]).to eq(1)
      end

      it "can access as string" do
        expect(hash["qaz"]).to eq(1)
      end
    end

    context "string key" do
      it "can access as symbol" do
        expect(hash[:qwert]).to eq(2)
      end

      it "can access as string" do
        expect(hash["qwert"]).to eq(2)
      end
    end

    context "fixnum key" do
      it "can access as fixnum" do
        expect(hash[3]).to eq(4)
      end
    end

    context "array key" do
      it "can access as array" do
        expect(hash[[1]]).to eq(5)
      end
    end

    context "hash key" do
      it "can access as hash" do
        expect(hash[{e: 0}]).to eq(6)
      end
    end
  end

  describe "similar Symbol and String keys have their own values" do
    let(:hash) { Dodiez::CoolHash.new({ qwerty: 1, "qwerty" => 2 }) }

    it "symbol key" do
      expect(hash[:qwerty]).to eq(1)
    end

    it "string key" do
      expect(hash["qwerty"]).to eq(2)
    end
  end
end
