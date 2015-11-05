require 'spec_helper'

describe "ToBool" do
  context "[String] asuccess case(send back boolean)" do
    it "'true' string" do
      expect('true'.to_bool).to be_a_kind_of(TrueClass)
    end
    it "'false' string" do
      expect('false'.to_bool).to be_a_kind_of(FalseClass)
    end
  end

  context "[String] failure case(raise exception)" do
    it "'foo' string" do
      expect{'hoge'.to_bool}.to raise_error(ArgumentError)
    end
    it "'' string" do
      expect{''.to_bool}.to raise_error(ArgumentError)
    end
    it "'truetrue' string" do
      expect{''.to_bool}.to raise_error(ArgumentError)
    end
  end

  context "[Other Object] failure case(raise exception)" do
    it "nil class" do
      expect{nil.to_bool}.to raise_error(NoMethodError)
    end
    it "0 integer" do
      expect{0.to_bool}.to raise_error(NoMethodError)
    end
  end

  context "[Boolean] No operation case(send back self)" do
    it "true boolean" do
      expect(true.to_bool).to be_a_kind_of(TrueClass)
    end
    it "false boolean" do
      expect(false.to_bool).to be_a_kind_of(FalseClass)
    end
  end

end
